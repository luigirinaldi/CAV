#!/bin/bash
cd ./parabit
cargo build --release
cd ../scripts

OUTDIR=../output/smoke_test

JOBS=8
MEM_PER_PROCESS=1   # GB per process
TIMEOUT=2           # seconds
VERIFY_TIMEOUT=10   # seconds

# Run Alive and Hydra to check parabit and PBV
echo "=== Executing parabit on benchmark set : Alive ==="
uv run parabit_runner.py ../benchmarks/Alive/bwlang $OUTDIR/parabit/Alive -j $JOBS -m $MEM_PER_PROCESS -t $TIMEOUT --quiet
echo "=== Executing parabit on benchmark set : Hydra ==="
uv run parabit_runner.py ../benchmarks/Hydra/bwlang $OUTDIR/parabit/Hydra -j $JOBS -m $MEM_PER_PROCESS -t $TIMEOUT --quiet
echo "=== Executing pbv on benchmark set : Alive ==="
uv run pbv_runner.py ../benchmarks/Alive/smt2 $OUTDIR/pbv/Alive --max-workers $JOBS --timeout $TIMEOUT
echo "=== Executing pbv on benchmark set : Hydra ==="
uv run pbv_runner.py ../benchmarks/Hydra/smt2 $OUTDIR/pbv/Hydra --max-workers $JOBS --timeout $TIMEOUT

# Run Alive and Hydra with verify to check Isabelle
echo "=== Executing and verifying parabit on benchmark set : Alive ==="
uv run parabit_runner.py ../benchmarks/Alive/bwlang $OUTDIR/parabit_verif/Alive -j $JOBS -m $MEM_PER_PROCESS -t $VERIFY_TIMEOUT --check-isabelle --quiet
echo "=== Executing and verifying parabit on benchmark set : Hydra ==="
uv run parabit_runner.py ../benchmarks/Hydra/bwlang $OUTDIR/parabit_verif/Hydra -j $JOBS -m $MEM_PER_PROCESS -t $VERIFY_TIMEOUT --check-isabelle --quiet

# Generate Tables and Plots
echo "=== Generating Plots and Tables ==="
TIMEOUT=$(( TIMEOUT * 1000 )) SMOKE_TEST=1 RESULTS_DIR=$OUTDIR uv run jupyter nbconvert --to notebook --execute --inplace ./plots/eval_graphs.ipynb
