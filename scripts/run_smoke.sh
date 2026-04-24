#!/bin/bash

mkdir ./output -p

cd ./parabit 
cargo build --release
cd ../scripts

OUTDIR=../output/smoke_test 

mkdir $OUTIDR

# Run Alive and Hydra to check parabit and PBV
uv run parabit_runner.py ../benchmarks/Alive/bwlang $OUTDIR/parabit/Alive -j 8 -m 1 -t 2 --quiet
uv run parabit_runner.py ../benchmarks/Hydra/bwlang $OUTDIR/parabit/Hydra -j 8 -m 1 -t 2 --quiet
uv run pbv_runner.py ../benchmarks/Alive/smt2 $OUTDIR/pbv/Alive --max-workers 8 --timeout 2
uv run pbv_runner.py ../benchmarks/Hydra/smt2 $OUTDIR/pbv/Hydra --max-workers 8 --timeout 2

# Run Alive and Hydra with verify to check Isabelle
uv run parabit_runner.py ../benchmarks/Alive/bwlang $OUTDIR/parabit_verif/Alive -j 8 -m 1 -t 2 --check-isabelle --quiet
uv run parabit_runner.py ../benchmarks/Hydra/bwlang $OUTDIR/parabit_verif/Hydra -j 8 -m 1 -t 2 --check-isabelle --quiet

# Generate Tables and Plots
TIMEOUT=1000 SMOKE_TEST=1 RESULTS_DIR=$OUTDIR uv run jupyter nbconvert --to notebook --execute --inplace ./plots/eval_graphs.ipynb