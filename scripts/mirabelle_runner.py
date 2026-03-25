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
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

from tqdm import tqdm

from parse_mirabelle import parse_log_file

# --- Configuration ---

PARABIT_BIN = os.environ.get("PARABIT_PATH", "../parabit/target/release/parabit")
ISABELLE_DOCKER_IMAGE = "isabelle-docker:latest"
SLEDGEHAMMER_TIMEOUT = 300  # seconds per theorem goal
THREADS = 4               # CPU cores available to each mirabelle Docker container
MEMORY = "8g"            # Memory limit per mirabelle Docker container (e.g. "8g", "16g")
JOBS = 3                  # Number of theories to run in parallel per variant

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
    Path("../benchmarks/Alive/bwlang"),
    Path("../benchmarks/Cadence/bwlang"),
    Path("../benchmarks/Hydra/bwlang"),
    Path("../benchmarks/ROVER/bwlang"),
]


# --- Process registry for clean shutdown ---

_running_containers: list[tuple[subprocess.Popen, str]] = []  # (proc, container_name)
_procs_lock = threading.Lock()
_shutting_down = False


def _kill_all():
    global _shutting_down
    _shutting_down = True
    with _procs_lock:
        for proc, container_name in _running_containers:
            # Kill the container directly — proc.kill() only kills the docker client,
            # the container itself keeps running until told otherwise.
            subprocess.run(["docker", "kill", container_name], capture_output=True)
            try:
                proc.kill()
            except Exception:
                pass


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


def run_docker_mirabelle_theory(
    thy_dir: Path,
    theory_name: str,
    sledgehammer_timeout: int,
    threads: int,
    memory: str,
) -> Path:
    """Run Isabelle mirabelle for a single theory via Docker.

    Returns the path to the mirabelle.log produced by this run.
    """
    out_subdir = f"mirabelle_out_{theory_name}"
    container_name = f"mirabelle_{os.getpid()}_{theory_name}"
    # Pre-create the output directory so Docker doesn't need to mkdir inside the mount
    (thy_dir.parent / "logs" / out_subdir).mkdir(parents=True, exist_ok=True)
    print(f"    mirabelle [{theory_name}] ...")
    proc = subprocess.Popen(
        [
            "docker", "run", "--rm",
            "--name", container_name,
            "--cpus", str(threads),
            "--memory", memory,
            "-v", f"{thy_dir.parent.absolute()}:/build_dir/",
            ISABELLE_DOCKER_IMAGE,
            "mirabelle",
            "-d", "/build_dir/thy",
            "-O", f"/build_dir/logs/{out_subdir}",
            "-o", f"threads={threads}",
            "-A", "try0",
            "-A", f"sledgehammer[timeout={sledgehammer_timeout}, max_proofs=1]",
            "-T", theory_name,
            "LemmaSledge",
        ],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
    )
    with _procs_lock:
        _running_containers.append((proc, container_name))
    try:
        for line in proc.stdout:
            tqdm.write(f"[{theory_name}] {line}", end="")
        proc.wait()
    finally:
        with _procs_lock:
            _running_containers.remove((proc, container_name))
    if proc.returncode != 0 and not _shutting_down:
        tqdm.write(
            f"Warning: mirabelle exited with code {proc.returncode} for {theory_name}",
        )
    return thy_dir.parent / "logs" / out_subdir / "mirabelle.log"


def process_variant(
    benchmark_name: str,
    bwlang_dir: Path,
    results_base: Path,
    mode: str,
    sledgehammer_timeout: int,
    threads: int,
    memory: str,
    jobs: int,
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

    # 5. Run mirabelle per-theory in parallel, saving an independent log for each
    logs_dir = out_dir / "logs"
    logs_dir.mkdir(parents=True, exist_ok=True)
    print(f"  Running mirabelle on {len(theory_stems)} theories ({mode}, {jobs} parallel) ...")

    all_parsed = {}
    solved = 0
    timeouts = 0
    executor = ThreadPoolExecutor(max_workers=jobs)
    futures = {
        executor.submit(
            run_docker_mirabelle_theory,
            thy_dir, theory, sledgehammer_timeout, threads, memory,
        ): theory
        for theory in theory_stems
    }
    try:
        with tqdm(
            total=len(theory_stems),
            desc=f"{benchmark_name}/{mode}",
            unit="thm",
            postfix={"solved": 0, "timeout": 0},
        ) as pbar:
            for future in as_completed(futures):
                theory = futures[future]
                log_src = future.result()
                if not log_src.exists():
                    if not _shutting_down:
                        tqdm.write(f"Warning: no log produced for {theory}")
                else:
                    log_dst = logs_dir / f"{theory}.log"
                    shutil.copy(log_src, log_dst)
                    parsed = parse_log_file(str(log_dst))
                    all_parsed.update(parsed)
                    for entry in parsed.values():
                        if entry[0]["method"] == "timeout":
                            timeouts += 1
                        else:
                            solved += 1
                    pbar.set_postfix({"solved": solved, "timeout": timeouts})
                pbar.update(1)
    except KeyboardInterrupt:
        tqdm.write("\nInterrupt received — killing all running containers ...")
        _kill_all()
        executor.shutdown(wait=False, cancel_futures=True)
    else:
        executor.shutdown(wait=False)

    # 6. Write combined parsed results
    with open(out_dir / "parsed.json", "w") as f:
        json.dump(all_parsed, f, indent=2)


# --- Main ---

def run_mirabelle_benchmarks(
    benchmark_dirs: list = BENCHMARK_DIRS,
    results_base: Path = Path("../results2/mirabelle"),
    sledgehammer_timeout: int = SLEDGEHAMMER_TIMEOUT,
    threads: int = THREADS,
    memory: str = MEMORY,
    jobs: int = JOBS,
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
            threads=threads,
            memory=memory,
            jobs=jobs,
        )
        if _shutting_down:
            break
        process_variant(
            benchmark_name, bwlang_dir, results_base,
            mode="nolemma",
            sledgehammer_timeout=sledgehammer_timeout,
            threads=threads,
            memory=memory,
            jobs=jobs,
        )
        if _shutting_down:
            break

    print("\nDone.")


if __name__ == "__main__":
    try:
        run_mirabelle_benchmarks()
    except KeyboardInterrupt:
        sys.exit(1)
