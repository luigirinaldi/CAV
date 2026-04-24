#!/bin/bash

cd ./parabit 
cargo build --release
cd ../scripts

mkdir ../output/results

# Run Parabit
uv run collect_parabit.py -j 2 -m 8 -t 60 --outdir ../output/results
# Run PBV
uv run collect_pbv.py -j 8 -t 60 --outdir ../output/results

# Run ROVER with verify to check Isabelle
# Larger timeout to account for extra time needed to generate proofs
uv run collect_parabit.py -j 2 -m 8 -t 600 --outdir ../output/results --verify

# Generate Tables and Plots
RESULTS_DIR='../output/results' uv run jupyter nbconvert --to notebook --execute --inplace ./plots/eval_graphs.ipynb