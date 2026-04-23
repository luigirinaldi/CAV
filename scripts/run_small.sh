#!/bin/bash

cd ./parabit 
cargo build --release
cd ../scripts

mkdir ../results_small

# Run Parabit
uv run collect_parabit.py -j 8 -m 2 -t 5 --outdir ../results_small
# Run PBV
uv run collect_pbv.py -j 8 -t 5 --outdir ../results_small

# Run ROVER with verify to check Isabelle
# Larger timeout to account for extra time needed to generate proofs
uv run collect_parabit.py -j 8 -m 2 -t 10 --outdir ../results_small --verify

# Generate Tables and Plots
TIMEOUT=5000 RESULTS_DIR='../results_small' uv run jupyter nbconvert --to notebook --execute --inplace ./plots/eval_graphs.ipynb