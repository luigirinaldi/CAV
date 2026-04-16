#!/bin/bash

I=${1}
J=${2:-4}
M=${3:-4}
T=${4:-60}

cd ../parabit
cargo build --release
cd ../scripts

uv run parabit_runner.py ../benchmarks/ROVER/bwlang/    ../results/parabit_verif/ROVER --check-isabelle --isabelle-image $I -j $J -m $M -t $T 
uv run parabit_runner.py ../benchmarks/Alive/bwlang/    ../results/parabit_verif/Alive --check-isabelle --isabelle-image $I -j $J -m $M -t $T
uv run parabit_runner.py ../benchmarks/Hydra/bwlang/    ../results/parabit_verif/Hydra --check-isabelle --isabelle-image $I -j $J -m $M -t $T
uv run parabit_runner.py ../benchmarks/Cadence/bwlang/  ../results/parabit_verif/Cadence --check-isabelle --isabelle-image $I -j $J -m $M -t $T