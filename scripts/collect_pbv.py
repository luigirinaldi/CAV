import argparse
from pathlib import Path

from pbv_runner import run_with_args
from tqdm import tqdm

BENCHMARKS_BASE = Path('../benchmarks')
RESULT_BASE = Path('../results/')

FLAT_BENCHMARKS = ['Alive', 'Hydra']
NESTED_BENCHMARKS = ['ROVER', 'Cadence']

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run pbvsolver on all benchmarks and save results to CSV"
    )
    parser.add_argument(
        "-j", "--jobs",
        type=int,
        default=4,
        help="Number of parallel workers per benchmark (default: 4)",
    )
    parser.add_argument(
        "-t", "--timeout",
        type=int,
        default=60,
        help="Timeout per file in seconds (default: 60)",
    )
    parser.add_argument(
        "--outdir",
        type=Path,
        default=RESULT_BASE,
        help="Base directory for results output",
    )

    args = parser.parse_args()
    args.type_check = False

    for bench in FLAT_BENCHMARKS:
        input_dir = BENCHMARKS_BASE / bench / 'smt2'
        output_dir = args.outdir / 'pbv' / bench
        print(f"\nRunning {bench} (flat)")
        run_with_args(input_dir, output_dir, args.timeout, args.jobs, args.type_check)

    for bench in NESTED_BENCHMARKS:
        smt2_dir = BENCHMARKS_BASE / bench / 'smt2'
        subdirs = sorted(d for d in smt2_dir.iterdir() if d.is_dir())
        print(f"\nRunning {bench} (nested, {len(subdirs)} folders)")
        pbar = tqdm(total=len(subdirs), desc=bench)
        for subdir in subdirs:
            output_dir = args.outdir / 'pbv' / bench / subdir.name
            run_with_args(subdir, output_dir, args.timeout, args.jobs, args.type_check)
            pbar.update(1)
        pbar.close()
