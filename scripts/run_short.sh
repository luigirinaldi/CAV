#!/bin/bash

cd ./parabit
cargo build --release
cd ../scripts

OUTDIR=../output/results_short

MEM_PER_PROCESS=2   # GB per process (fixed for short run)
CPUS=12
MEMORY=16           # total GB
TIMEOUT=5           # seconds

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
TIMEOUT_MS=$(( TIMEOUT * 1000 ))

mkdir -p $OUTDIR

# Run Parabit
uv run collect_parabit.py -j $JOBS -m $MEM_PER_PROCESS -t $TIMEOUT --outdir $OUTDIR
# Run PBV
uv run collect_pbv.py -j $CPUS -t $TIMEOUT --outdir $OUTDIR

# Run with verify to check Isabelle
uv run collect_parabit.py -j $JOBS -m $MEM_PER_PROCESS -t $TIMEOUT --outdir $OUTDIR --verify

# Generate Tables and Plots
TIMEOUT=$TIMEOUT_MS RESULTS_DIR=$OUTDIR uv run jupyter nbconvert --to notebook --execute --inplace ./plots/eval_graphs.ipynb
