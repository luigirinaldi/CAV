FROM rust:1-slim

WORKDIR /artifact

# Setup parabit
COPY ./parabit /artifact/parabit

RUN cd ./parabit && cargo build --release

# Copy benchmarks
COPY ./benchmarks /artifact/benchmarks

# Copy scripts
COPY ./scripts /artifact/scripts

COPY --from=docker.io/astral/uv:latest /uv /uvx /usr/local/bin/

RUN cd ./scripts && uv sync --locked --no-install-project

# Install Isabelle
RUN docker pull makarius/isabelle:Isabelle2025-2
