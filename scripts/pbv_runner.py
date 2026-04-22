import os
import subprocess
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path
import argparse
import csv
from tqdm import tqdm

PBV_SOLVER_PATH = Path('../pbv/artifact/evaluation/solvers/pbvsolver')

def process_file(filepath: Path, log_dir: Path, timeout: int, type_check: bool = False) -> dict:
    """Run a docker command on a file and save the output or TIMEOUT.

    Returns:
        dict with keys 'file', 'result', 'time', and 'last_log_line' where result is 'sat', 'unsat', or 'timeout'
    """
    output_path = log_dir / filepath.name
    output_path = output_path.with_suffix('.log')
    cmd = [str(PBV_SOLVER_PATH), *(['--type-check'] if type_check else []), '-d', str(filepath)]

    proc = subprocess.Popen(
        cmd,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True
    )
    try:
        stdout, stderr = proc.communicate(timeout=timeout)
    except subprocess.TimeoutExpired:
        proc.kill()
        stdout, stderr = proc.communicate()
        # Force remove the container if still running
        full_output = f"{stdout}\nTIMEOUT\n"
        output_path.write_text(full_output)
        return {"file": filepath.name, "result": "timeout", "time": timeout, "last_log_line": "TIMEOUT"}

    if proc.returncode == 0:
        output_path.write_text(stdout)

        # Extract timestamps and calculate duration
        lines = stdout.strip().split('\n')
        start_time = None
        end_time = None

        for line in lines:
            if line.startswith("START_TIME="):
                start_time = float(line.split("=")[1])
            elif line.startswith("END_TIME="):
                end_time = float(line.split("=")[1])

        # Calculate duration
        if start_time is not None and end_time is not None:
            duration = end_time - start_time
        else:
            duration = None

        # Parse the result from the output (excluding timestamp lines)
        result_lines = [line for line in lines if not line.startswith("START_TIME=") and not line.startswith("END_TIME=")]
        last_line = result_lines[-1].strip().lower() if result_lines else ""

        if last_line == "sat":
            result = "sat"
        elif last_line == "unsat":
            result = "unsat"
        else:
            raise ValueError(f"Expected 'sat' or 'unsat' in last line, got: '{last_line}'")

        return {"file": filepath.name, "result": result, "time": duration, "last_log_line": last_line}
    else:
        error_output = f"ERROR:\n{stderr.strip()}"
        output_path.write_text(error_output)
        raise RuntimeError(f"Process failed for {filepath.name}: {stderr.strip()}")

def main():
    parser = argparse.ArgumentParser(description="Run docker command on files in parallel with timeout.")
    parser.add_argument("input_dir", help="Directory containing input files")
    parser.add_argument("output_dir", help="Directory to store output files")
    parser.add_argument("--timeout", type=int, default=10, help="Timeout per file in seconds (default: 300)")
    parser.add_argument("--max-workers", type=int, default=4, help="Maximum number of parallel workers (default: 4)")
    parser.add_argument("--csv-output", default="results.csv", help="CSV file to save results (default: results.csv)")
    parser.add_argument("--type-check", action=argparse.BooleanOptionalAction, help="Run the type checker on the provided formula")

    args = parser.parse_args()

    input_dir = Path(args.input_dir)
    output_dir = Path(args.output_dir)
    timeout = args.timeout
    max_workers = args.max_workers

    # Create log directory inside output_dir
    log_dir = output_dir / "logs"
    os.makedirs(log_dir, exist_ok=True)

    # CSV will be saved in output_dir
    csv_output = output_dir / args.csv_output

    files = [f for f in input_dir.iterdir() if f.is_file() and f.suffix == ".smt2"]

    results = []

    pbar = tqdm(total=len(files), desc="Processing files", position=0)

    with ProcessPoolExecutor(max_workers=max_workers) as executor:
        futures = {executor.submit(process_file, f, log_dir, timeout, args.type_check): f for f in files}
        try:
            for future in as_completed(futures):
                try:
                    result = future.result()
                    results.append(result)
                    time_str = f" ({result['time']:.3f}s)" if result.get('time') is not None else ""
                    pbar.write(f"✅ {result['file']}: {result['result']}{time_str}")
                except Exception as e:
                    filepath = futures[future]
                    # If type-check was not enabled, retry with type-check
                    if not args.type_check:
                        pbar.write(f"⚠️  {filepath.name}: Error - {e}. Retrying with --type-check...")
                        try:
                            retry_result = process_file(filepath, log_dir, timeout, type_check=True)
                            results.append(retry_result)
                            time_str = f" ({retry_result['time']:.3f}s)" if retry_result.get('time') is not None else ""
                            pbar.write(f"✅ {retry_result['file']}: {retry_result['result']}{time_str} (with type-check)")
                        except Exception as retry_e:
                            pbar.write(f"❌ {filepath.name}: Error even with type-check - {retry_e}")
                            # Read last line from log file
                            log_file = log_dir / filepath.with_suffix('.log').name
                            last_log_line = ""
                            if log_file.exists():
                                log_content = log_file.read_text().strip()
                                if log_content:
                                    last_log_line = log_content.split('\n')[-1]
                            results.append({"file": filepath.name, "result": "error", "time": None, "last_log_line": last_log_line})
                    else:
                        pbar.write(f"❌ {filepath.name}: Error - {e}")
                        # Read last line from log file
                        log_file = log_dir / filepath.with_suffix('.log').name
                        last_log_line = ""
                        if log_file.exists():
                            log_content = log_file.read_text().strip()
                            if log_content:
                                last_log_line = log_content.split('\n')[-1]
                        results.append({"file": filepath.name, "result": "error", "time": None, "last_log_line": last_log_line})
                finally:
                    pbar.update(1)
        except KeyboardInterrupt:
            pbar.close()
            print("\nCtrl-C detected! Terminating all running processes...")
            for future in futures:
                future.cancel()
            executor.shutdown(wait=False, cancel_futures=True)
            # Optionally, force kill any remaining docker containers (best effort)
            import subprocess
            subprocess.run(["docker", "ps", "-q", "--filter", "name=pbvsolver_"], stdout=subprocess.PIPE)
            running = subprocess.run(["docker", "ps", "-q", "--filter", "name=pbvsolver_"], stdout=subprocess.PIPE)
            for cid in running.stdout.decode().split():
                subprocess.run(["docker", "rm", "-f", cid])
            print("All processes terminated.")
            exit(1)

    pbar.close()

    # Save results to CSV
    with open(csv_output, 'w', newline='') as csvfile:
        fieldnames = ['file', 'result', 'time', 'last_log_line']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames, extrasaction='ignore')
        writer.writeheader()
        writer.writerows(results)

    print(f"\n📊 Results saved to {csv_output}")
    print(f"Total files: {len(results)}")
    print(f"SAT: {sum(1 for r in results if r['result'] == 'sat')}")
    print(f"UNSAT: {sum(1 for r in results if r['result'] == 'unsat')}")
    print(f"Timeout: {sum(1 for r in results if r['result'] == 'timeout')}")
    print(f"Errors: {sum(1 for r in results if r['result'] == 'error')}")

if __name__ == "__main__":
    main()