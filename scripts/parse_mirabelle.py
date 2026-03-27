from pathlib import Path
import re
import sys
import json

def parse_log_file(filename):
    results = {}

    with open(filename, "r") as file:
        for i, line in enumerate(file):
            if sledge_match := re.match(
                r".*sledgehammer goal\.proof\s*(\d+)ms .*LemmaSledge\.([a-zA-Z_0-9]+) \d+:\d+.*((.*(some)(.*))|.*(timeout).*)",
                line,
            ):
                name = sledge_match.group(2)
                total_time = int(sledge_match.group(1))
                if sledge_match.group(5) == "some":
                    proof_info = sledge_match.group(3)
                    if match := re.match(
                        r".*\(SH (\d+)ms, ATP (\d+)ms\).*Try this:(.*)",
                        proof_info,
                    ):
                        info = {
                            "total_time": total_time,
                            "sh_time": int(match.group(1)),
                            "atp_time": int(match.group(2)),
                            "proof": match.group(3).strip(),
                        }
                    else:
                        info = {
                            "total_time": total_time,
                            "proof": proof_info.strip(),
                        }
                    results.setdefault(name, []).append(info)
                elif sledge_match.group(7) == "timeout":
                    results.setdefault(name, []).append(
                        {"total_time": total_time}
                    )
    return results


def combine_logs(log_paths: list[Path], out_file: Path) -> dict:
    """Parse multiple mirabelle log files and write combined JSON to out_file."""
    all_parsed = {}
    for log_path in log_paths:
        all_parsed.update(parse_log_file(str(log_path)))
    with open(out_file, "w") as f:
        json.dump(all_parsed, f, indent=2)
    return all_parsed


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <log_file_path> <output_json_path>")
        sys.exit(1)

    log_path = sys.argv[1]
    output_path = sys.argv[2]

    if Path(log_path).is_file():
        log_files = [Path(log_path)]
    elif (dir_path := Path(log_path)).is_dir():
        log_files = [*dir_path.glob('*.log')]
        print(log_files)
    else:
        sys.exit(1)

    combine_logs(log_files, Path(output_path))