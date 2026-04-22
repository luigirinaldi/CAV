import json
import os
import pandas as pd

def get_egraph_from_dir(data_dir = "../../data/"):
    data_dir = "../../data/"

    egraph_data = {}

    for direc in os.listdir(data_dir):
        try:
            egraph_data[direc] = (
            load_egraph_data(f"{data_dir}{direc}/egraph_stats.json"),
            load_egraph_data(f"{data_dir}{direc}/egraph_stats_mem.json"),
        )
        except:
            continue

    return egraph_data

def format_bytes(size_bytes: int) -> str:
    """Convert bytes to a human-readable format (e.g., KB, MB, GB)."""
    # if size_bytes == 0:
    #     return "0B"
    # units = ("B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB")
    # power = 2 ** 10  # 1024 (binary system)
    # for unit in units:
    #     if size_bytes < power:
    #         return f"{size_bytes:.0f} {unit}"
    #     size_bytes /= power
    # return f"{size_bytes:.2f} YB"  # Fallback (unlikely)
    # convert to MB
    return f"{size_bytes / 2**20:.2f}"

def parse_stop(stop):
    match stop:
        case "Saturated":
            return "Saturated"
        case {"Other": "Found equivalence"}:
            return "Equivalent"
        case {"TimeLimit": _limit}:
            return "Timeout"
        case {"NodeLimit": _limit}:
            return "NodeLimit"
        case err:
            raise NotImplementedError(f"This shouldn't happen {err}")

def get_dataframes(egraph_data):
    dataframes = {}

    for test_set, (data, data_mem) in egraph_data.items():
        processed = {theorem: entry["summary"] for theorem, entry in data.items()}
        for theorem, info in data_mem.items():
            processed[theorem]["memory"] = format_bytes(int(info["memory_footprint"]))
        for theorem, info in data.items():
            # use the crude time since it feels more correct, also convert to milliseconds
            processed[theorem]["runtime"] = info["crude_time"] * 1000
        df = pd.DataFrame(processed)
        df = df.transpose()
        df["stop_reason"] = df["stop_reason"].map(parse_stop)

        df = df.sort_values(by=["stop_reason", "total_time"])

        dataframes[test_set] = df
    return dataframes

def load_sledge_data(filename):
    with open(filename, 'r') as f:
        data = json.load(f)

    times = {"name":[], "time":[], "timeout":[], "proof": []}
    for theorem, entry in data.items():
        times["name"].append(theorem)
        timeout = "proof" not in entry[0]
        times["timeout"].append(timeout)
        times["time"].append(entry[0]["total_time"] if timeout else entry[0]['atp_time'])
        if not timeout:
            times['proof'].append(entry[0]['proof'])
        else:
            times['proof'].append(None)
    return pd.DataFrame(times)

# Load times from E-Graph file
def load_egraph_data(filename) -> dict:
    with open(filename, 'r') as f:
        data = json.load(f)


    return data


def prepare_step_data(series):
    times = sorted(series)
    x = [0]
    y = [0]
    for i, t in enumerate(times, start=1):
        x.extend([t, t])
        y.extend([y[-1], i])
    return x, y

def plot_cactus(ax, dataframe, timeout=None, pltopts=None):
    num_problems = len(dataframe)

    ax.axhline(
        num_problems,
        label=f"Number of problems: {num_problems}",
        color="black",
        linestyle="dotted",
    )
    if timeout:
        ax.axvline(
            timeout,
            label=f"Timeout: {timeout / 1000:.3g} Seconds",
            color="grey",
            linestyle="--",
        )

    solved_counts = []
    for name, values in dataframe.items():
        solved = values.dropna()
        x, y = prepare_step_data(solved.to_list())

        if timeout and x[-1] < timeout:
            y.append(y[-1])
            x.append(timeout)

        line_opts = pltopts.get(name, {}) if pltopts else {}

        ax.plot(
            x,
            y,
            drawstyle="steps-post",
            label=f"{name}: {len(solved)} (${100 * len(solved) / num_problems:.0f}\\%$) ",
            **line_opts,
        )
        solved_counts.append(len(solved))

    ax.set_xlabel("Runtime (ms)")
    ax.set_ylabel("Number of solved problems")
    ax.set_xscale("log")

    y_ticks = ax.get_yticks()
    y_ticks = [*y_ticks, num_problems] if num_problems not in y_ticks else y_ticks
    ax.set_yticks(sorted(y_ticks))

    ax2 = ax.twinx()
    ax2.set_ylim(ax.get_ylim())
    ax2.set_yticks(sorted(set(solved_counts)))
    ax2.set_ylabel("Solved instances")


def plot_survival(ax, dataframe, timeout=None, pltopts=None):
    num_problems = len(dataframe)

    ax.axvline(num_problems, label=f"Number of problems: {num_problems}", color="blue")
    if timeout:
        ax.axhline(
            timeout,
            label=f"Timeout: {timeout / 1000:.3g} Seconds",
            color="grey",
            linestyle="--",
        )

    for name, values in dataframe.items():
        solved = values.dropna()
        y, x = prepare_step_data(solved.to_list())

        if timeout and x[-1] < num_problems:
            x.append(x[-1])
            y.append(timeout)

        line_opts = pltopts.get(name, {}) if pltopts else {}

        ax.plot(
            x,
            y,
            drawstyle="steps-post",
            label=f"{name}: {len(solved)} (${100 * len(solved) / num_problems:.0f}\\%$) ",
            **line_opts,
        )

    ax.set_ylabel("Runtime (ms)")
    ax.set_xlabel("Number of solved problems")
    ax.set_yscale("log")


def combine_results(x):
    vals_as_list = x.dropna().to_list()
    if vals_as_list != []:
        return min(x.dropna().to_list())
    else:
        return None