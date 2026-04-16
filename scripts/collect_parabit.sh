#!/bin/bash

J=${1:-4}
M=${2:-4}
T=${3:-60}

cd ../parabit
cargo build --release
cd ../scripts

uv run parabit_runner.py ../benchmarks/ROVER/bwlang/ ../results/parabit/ROVER -j $J -m $M -t $T
uv run parabit_runner.py ../benchmarks/Alive/bwlang/ ../results/parabit/Alive -j $J -m $M -t $T
uv run parabit_runner.py ../benchmarks/Hydra/bwlang/ ../results/parabit/Hydra -j $J -m $M -t $T
uv run parabit_runner.py ../benchmarks/Cadence/bwlang/ ../results/parabit/Cadence -j $J -m $M -t $T