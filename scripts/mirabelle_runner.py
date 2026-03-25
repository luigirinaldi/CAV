#!/usr/bin/env python3
"""
Run Mirabelle on all benchmark sets to evaluate Sledgehammer proof search,
with and without axiom lemmas.
"""

import json
import os
import shutil
import subprocess
import sys
from pathlib import Path

from parse_mirabelle import parse_log_file

# --- Configuration ---

PARABIT_BIN = os.environ.get("PARABIT_PATH", "../parabit/target/release/parabit")
ISABELLE_DOCKER_IMAGE = "isabelle-docker:latest"
SLEDGEHAMMER_TIMEOUT = 60  # seconds per theorem goal

# Proof helper .thy files to copy alongside generated theorems
PROOFS_DIR = Path(PARABIT_BIN).resolve().parent.parent.parent / "proofs"

# Proof helper filenames to exclude from the ROOT theories list
PROOF_HELPER_STEMS = {
    "arith_lemmas",
    "bitwise_lemmas",
    "mixed_lemmas",
    "rewrite_defs",
    "signed_lemmas",
}

# Extra imports added to .thy files in the lemma variant
LEMMA_IMPORTS = ["arith_lemmas", "bitwise_lemmas", "mixed_lemmas", "signed_lemmas"]

BENCHMARK_DIRS = [
    # Path("benchmarks/Alive/bwlang"),
    # Path("benchmarks/Cadence/bwlang"),
    # Path("benchmarks/Hydra/bwlang"),
    Path("../benchmarks/ROVER/bwlang"),
]


# --- Helpers ---

def generate_theorems(bwlang_file: Path, thy_dir: Path):
    """Run parabit get-proof --make-template to generate an empty theorem file."""
    cmd = [
        PARABIT_BIN,
        str(bwlang_file),
        "get-proof",
        "--make-template",
        "--theorem-path", str(thy_dir),
    ]
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(
            f"  Warning: parabit failed for {bwlang_file.name}:\n  {result.stderr.strip()}",
            file=sys.stderr,
        )


def add_lemma_imports(thy_dir: Path):
    """Patch generated .thy files to import the helper lemma theories."""
    extra = " ".join(LEMMA_IMPORTS)
    for thy_file in thy_dir.glob("*.thy"):
        if thy_file.stem in PROOF_HELPER_STEMS:
            continue
        content = thy_file.read_text()
        patched = content.replace(
            "imports rewrite_defs",
            f"imports rewrite_defs {extra}",
            1,
        )
        thy_file.write_text(patched)


def setup_root_file(thy_dir: Path):
    """Create the Isabelle ROOT file listing all benchmark theories."""
    theory_stems = sorted(
        f.stem
        for f in thy_dir.glob("*.thy")
        if f.stem not in PROOF_HELPER_STEMS
    )
    root = thy_dir / "ROOT"
    with open(root, "w") as f:
        f.write("session LemmaSledge = HOL +\n")
        f.write("options [quick_and_dirty]\n")
        f.write("theories\n")
        for stem in theory_stems:
            f.write(f"  {stem}\n")
    return theory_stems


def run_docker_mirabelle_theory(thy_dir: Path, theory_name: str, sledgehammer_timeout: int) -> Path:
    """Run Isabelle mirabelle for a single theory via Docker.

    Returns the path to the mirabelle.log produced by this run.
    """
    out_subdir = f"mirabelle_out_{theory_name}"
    print(f"    mirabelle [{theory_name}] ...")
    result = subprocess.run(
        [
            "docker", "run",
            "-v", f"{thy_dir.parent.absolute()}:/build_dir/",
            ISABELLE_DOCKER_IMAGE,
            "mirabelle",
            "-d", "/build_dir/thy",
            "-O", f"/build_dir/logs/{out_subdir}",
            "-A", "try0",
            "-A", f"sledgehammer[timeout={sledgehammer_timeout}, max_proofs=1]",
            "-T", theory_name,
            "LemmaSledge",
        ],
        text=True,
    )
    if result.returncode != 0:
        print(
            f"    Warning: mirabelle exited with code {result.returncode} for {theory_name}",
            file=sys.stderr,
        )
    return thy_dir.parent / "logs" / out_subdir / "mirabelle.log"


def process_variant(
    benchmark_name: str,
    bwlang_dir: Path,
    results_base: Path,
    mode: str,
    sledgehammer_timeout: int,
):
    """Generate theorems, run mirabelle, and parse results for one variant."""
    out_dir = results_base / mode / benchmark_name
    thy_dir = out_dir / "thy"
    thy_dir.mkdir(parents=True, exist_ok=True)

    # 1. Generate empty proof theorems
    bwlang_files = sorted(bwlang_dir.glob("*.bwlang"))
    print(f"  Generating {len(bwlang_files)} theorems ({mode}) ...")
    for f in bwlang_files:
        generate_theorems(f, thy_dir)

    # 2. Patch imports for lemma variant
    if mode == "lemma":
        add_lemma_imports(thy_dir)

    # 3. Copy proof helper .thy files
    for helper in PROOFS_DIR.glob("*.thy"):
        shutil.copy(helper, thy_dir / helper.name)

    # 4. Create ROOT file (lists all theories; mirabelle still needs it for the session)
    theory_stems = setup_root_file(thy_dir)
    if not theory_stems:
        print(f"  No benchmark theories found in {thy_dir}, skipping mirabelle.")
        return

    # 5. Run mirabelle per-theory, saving an independent log for each
    logs_dir = out_dir / "logs"
    logs_dir.mkdir(parents=True, exist_ok=True)
    print(f"  Running mirabelle on {len(theory_stems)} theories ({mode}) ...")

    all_parsed = {}
    for theory in theory_stems:
        log_src = run_docker_mirabelle_theory(thy_dir, theory, sledgehammer_timeout)
        if not log_src.exists():
            print(f"    Warning: no log produced for {theory}", file=sys.stderr)
            continue
        log_dst = logs_dir / f"{theory}.log"
        shutil.copy(log_src, log_dst)
        all_parsed.update(parse_log_file(str(log_dst)))

    # 6. Write combined parsed results
    timeouts = [k for k, v in all_parsed.items() if v[0]["method"] == "timeout"]
    print(
        f"  Parsed {len(all_parsed)} theorems, {len(timeouts)} timeouts "
        f"({mode}/{benchmark_name})"
    )
    with open(out_dir / "parsed.json", "w") as f:
        json.dump(all_parsed, f, indent=2)


# --- Main ---

def run_mirabelle_benchmarks(
    benchmark_dirs: list = BENCHMARK_DIRS,
    results_base: Path = Path("./results/mirabelle"),
    sledgehammer_timeout: int = SLEDGEHAMMER_TIMEOUT,
):
    """
    For each benchmark directory:
      - Generate empty Isabelle proof theorems via parabit (lemma + nolemma variants)
      - Run Isabelle mirabelle via Docker
      - Save logs and parsed JSON results

    Output structure:
      results/mirabelle/
        lemma/{benchmark}/thy/            ← generated .thy + proof helpers + ROOT
        lemma/{benchmark}/logs/{t}.log    ← one log per theory
        lemma/{benchmark}/parsed.json     ← combined parsed results
        nolemma/{benchmark}/...
    """
    if not Path(PARABIT_BIN).exists():
        print(f"Error: parabit binary not found at '{PARABIT_BIN}'", file=sys.stderr)
        print("Set the PARABIT_PATH environment variable to the binary location.")
        sys.exit(1)

    if not PROOFS_DIR.exists():
        print(f"Error: proofs directory not found at '{PROOFS_DIR}'", file=sys.stderr)
        sys.exit(1)

    for bwlang_dir in benchmark_dirs:
        bwlang_dir = Path(bwlang_dir)
        benchmark_name = bwlang_dir.parent.name
        print(f"\n=== {benchmark_name} ===")

        process_variant(
            benchmark_name, bwlang_dir, results_base,
            mode="lemma",
            sledgehammer_timeout=sledgehammer_timeout,
        )
        process_variant(
            benchmark_name, bwlang_dir, results_base,
            mode="nolemma",
            sledgehammer_timeout=sledgehammer_timeout,
        )

    print("\nDone.")


if __name__ == "__main__":
    run_mirabelle_benchmarks()
