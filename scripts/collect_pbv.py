import argparse
import csv
from pathlib import Path

from pbv_runner import run_with_args
from tqdm import tqdm


def summarise_nested(bench_out_dir: Path):
    directories = sorted(d for d in bench_out_dir.iterdir() if d.is_dir())
    results = []

    for dir_path in directories:
        results_file = dir_path / 'results.csv'
        if not results_file.exists():
            print(f"Warning: missing results.csv in {dir_path}")
            continue

        unsat_count = sat_count = timeout_count = error_count = 0
        time_unsat = total_time = 0

        with open(results_file, 'r') as f:
            reader = csv.DictReader(f)
            for row in reader:
                result_value = row['result'].lower()
                t = float(row['time']) if row['time'] not in (None, '', 'None') else 0.0
                total_time += t
                if result_value == 'unsat':
                    unsat_count += 1
                    time_unsat += t
                elif result_value == 'sat':
                    sat_count += 1
                elif result_value == 'timeout':
                    timeout_count += 1
                else:
                    error_count += 1

        total = unsat_count + sat_count + timeout_count + error_count
        percentage_unsat = (unsat_count / total * 100) if total > 0 else 0
        unsat_avg = time_unsat / unsat_count if unsat_count > 0 else None
        avg_time = total_time / total if total > 0 else 0

        results.append({
            'file': dir_path.stem,
            'unsat': unsat_count,
            'unknown': sat_count,
            'timeout': timeout_count,
            'total': total,
            'percentage_unsat': f'{percentage_unsat:.2f}%',
            'unsat_time_average': f'{unsat_avg:.4f}' if unsat_avg is not None else 'N/A',
            'result': 'unsat' if unsat_count == total else 'timeout',
            'time': avg_time,
        })

    if not results:
        return

    with open(bench_out_dir / 'summary.csv', 'w', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=list(results[0].keys()))
        writer.writeheader()
        writer.writerows(results)

    # Totals row
    final_res = {'file': 'total', 'unsat': 0, 'unknown': 0, 'timeout': 0, 'total': 0}
    time_cum = 0
    for res in results:
        final_res['unsat'] += res['unsat']
        final_res['unknown'] += res['unknown']
        final_res['timeout'] += res['timeout']
        final_res['total'] += res['total']
        time_cum += float(res['unsat_time_average']) * res['total'] if res['unsat_time_average'] != 'N/A' else 0
    final_res['percentage_unsat'] = f"{(final_res['unsat'] / final_res['total'] * 100):.2f}%"
    final_res['unsat_time_average'] = f"{time_cum / final_res['total']:.4f}" if final_res['total'] > 0 else 'N/A'
    results.append(final_res)

    print(f"\n## {bench_out_dir.name} Summary\n")
    headers = [k for k in list(results[0].keys()) if k not in ('time', 'result')]
    print("| " + " | ".join(headers) + " |")
    print("| " + " | ".join(['---'] * len(headers)) + " |")
    for row in results:
        print("| " + " | ".join(str(row.get(h, '')) for h in headers) + " |")

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
        summarise_nested(args.outdir / 'pbv' / bench)
