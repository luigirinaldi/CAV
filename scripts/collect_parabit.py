
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
    
    args = parser.parse_args()
    args.extra_commands = None
    args.verbose = False
    args.isabelle_image = 'isabelle-docker:latest'

    progress_bars : dict[str, tqdm]= {}
    for bench in BENCHMARKS:
        progress_bars[bench] = tqdm(desc=bench)
    for bench in BENCHMARKS:
        args.input_dir = BENCHMARKS_BASE / bench / 'bwlang'

        args.check_isabelle = args.verify
        if args.verify:
            args.output_dir = RESULT_BASE / 'parabit_verif' / bench
        else:
            args.output_dir = RESULT_BASE / 'parabit' / bench
        print(f"Running {bench}")
        pbar = progress_bars[bench]
        run_with_args(args, pbar)