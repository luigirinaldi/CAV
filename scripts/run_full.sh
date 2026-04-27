#!/bin/bash

cd ./parabit
cargo build --release
cd ../scripts

MEM_PER_PROCESS=8   # GB per process (fixed for full run)
CPUS=12
MEMORY=16           # total GB
TIMEOUT=60          # seconds

while [[ $# -gt 0 ]]; do
    case $1 in
        -t|--timeout) TIMEOUT="$2"; shift 2 ;;
        -c|--cpus)    CPUS="$2";    shift 2 ;;
        -m|--memory)  MEMORY="$2";  shift 2 ;;
        *) echo "Unknown argument: $1"; exit 1 ;;
    esac
done

JOBS_BY_MEM=$(( MEMORY / MEM_PER_PROCESS ))
JOBS=$(( CPUS < JOBS_BY_MEM ? CPUS : JOBS_BY_MEM ))
VERIFY_TIMEOUT=$(( TIMEOUT * 10 ))
TIMEOUT_MS=$(( TIMEOUT * 1000 ))

mkdir -p ../output/results

# Run Parabit
uv run collect_parabit.py -j $JOBS -m $MEM_PER_PROCESS -t $TIMEOUT --outdir ../output/results
# Run PBV
uv run collect_pbv.py -j $CPUS -t $TIMEOUT --outdir ../output/results

# Run with verify to check Isabelle
# Larger timeout to account for extra time needed to generate proofs
uv run collect_parabit.py -j $JOBS -m $MEM_PER_PROCESS -t $VERIFY_TIMEOUT --outdir ../output/results --verify

# Generate Tables and Plots
TIMEOUT=$TIMEOUT_MS RESULTS_DIR='../output/results' uv run jupyter nbconvert --to notebook --execute --inplace ./plots/eval_graphs.ipynb
