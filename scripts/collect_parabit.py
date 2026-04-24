
import argparse
from pathlib import Path

from parabit_runner import run_with_args
from tqdm import tqdm


BENCHMARKS_BASE = Path('../benchmarks')
BENCHMARKS = ['ROVER', 'Alive', 'Hydra', 'Cadence']
RESULT_BASE = Path('../results/')

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run a binary on the benchmarks and save results to CSV"
    )
    parser.add_argument(
        "-j",
        "--jobs",
        type=int,
        default=3,
        help="Number of parallel processes",
    )
    parser.add_argument(
        "-t",
        "--timeout",
        type=int,
        default=60,
        help="Timeout per file in seconds",
    )
    parser.add_argument(
        "-m",
        "--memory",
        type=int,
        default=8,
        help="Memory limit per process in GB",
    )
    parser.add_argument(
        "--verify",
        default=False,
        action="store_true",
        help="Verify the results by running Isabelle"
    )
    parser.add_argument(
        "--outdir",
        type=str,
        default=str(RESULT_BASE),
        help="Directory where the logs should be stored"
    )
    
    args = parser.parse_args()
    args.extra_commands = None
    args.verbose = False

    for bench in BENCHMARKS:
        args.input_dir = BENCHMARKS_BASE / bench / 'bwlang'

        args.check_isabelle = args.verify
        if args.verify:
            print(f"\n=== Executing experiment and verifying benchmark: {bench} ===\n")
            args.output_dir = Path(args.outdir) / 'parabit_verif' / bench
        else:
            print(f"\n=== Executing experiment on benchmark: {bench} ===\n")
            args.output_dir = Path(args.outdir) / 'parabit' / bench
        progress_bar = tqdm(desc=bench)
        run_with_args(args, progress_bar)
        progress_bar.close()