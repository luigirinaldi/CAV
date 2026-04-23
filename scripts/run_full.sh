#!/bin/bash

cd ./parabit 
cargo build --release
cd ../scripts

mkdir ../results

# Run Parabit
uv run collect_parabit.py -j 2 -m 8 -t 60 --outdir ../results
# Run PBV
uv run collect_pbv.py -j 8 -t 60 --outdir ../results

# Run ROVER with verify to check Isabelle
uv run collect_parabit.py -j 2 -m 8 -t 600 --outdir ../results

# Generate Tables and Plots
uv run jupyter nbconvert --to notebook --execute --inplace ./plots/eval_graphs.ipynb