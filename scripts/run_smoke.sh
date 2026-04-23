#!/bin/bash

cd ./parabit 
cargo build --release
cd ../scripts

mkdir ../smoke_test

uv run parabit_runner.py ../benchmarks/Alive/bwlang ../smoke_test/parabit/Alive -j 8 -m 1 -t 1 --quiet
uv run parabit_runner.py ../benchmarks/Hydra/bwlang ../smoke_test/parabit/Hydra -j 8 -m 1 -t 1 --quiet
uv run pbv_runner.py ../benchmarks/Alive/smt2 ../smoke_test/pbv/Alive --max-workers 8 --timeout 1
uv run pbv_runner.py ../benchmarks/Hydra/smt2 ../smoke_test/pbv/Hydra --max-workers 8 --timeout 1

uv run parabit_runner.py ../benchmarks/Alive/bwlang ../smoke_test/parabit_verif/Alive -j 8 -m 1 -t 1 --check-isabelle
