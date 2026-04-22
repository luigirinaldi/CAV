#!/bin/bash

cd ./parabit 
cargo build --release
cd ../scripts

uv run collect_parabit.py -j 16 -m 1 -t 5 --outdir ../results_smoke

uv run collect_parabit.py -j 16 -m 1 -t 5 --outdir ../results_smoke_verif --verify
