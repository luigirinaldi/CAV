FROM makarius/isabelle:Isabelle2025-2 AS isabelle

FROM rust:1-slim  

RUN apt-get update && apt-get install -y --no-install-recommends default-jre-headless && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /artifact
# Setup parabit
COPY ./parabit /artifact/parabit
RUN cd ./parabit && cargo build --release

COPY --from=isabelle /home/isabelle/Isabelle /home/isabelle/Isabelle

ENV PATH="/home/isabelle/Isabelle/bin:${PATH}"

# Copy benchmarks
COPY ./benchmarks /artifact/benchmarks

# Copy scripts
COPY ./scripts /artifact/scripts

COPY --from=docker.io/astral/uv:latest /uv /uvx /usr/local/bin/

RUN cd ./scripts && uv sync --locked --no-install-project

RUN apt-get update && apt-get install -y --no-install-recommends \
    default-jre-headless fontconfig time && \
    rm -rf /var/lib/apt/lists/*