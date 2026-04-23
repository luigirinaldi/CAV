FROM makarius/isabelle:Isabelle2025-2 AS isabelle

FROM rust:1-slim  

RUN apt-get update && apt-get install -y --no-install-recommends \
    default-jre-headless fontconfig time curl zstd texlive-latex-base texlive-latex-recommended texlive-fonts-recommended texlive-fonts-extra cm-super dvipng && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /artifact
# Setup parabit
COPY ./parabit /artifact/parabit
RUN cd ./parabit && cargo build --release

COPY --from=isabelle /home/isabelle/Isabelle /home/isabelle/Isabelle

ENV PATH="/home/isabelle/Isabelle/bin:${PATH}"

# Get the pbv binary from the paper artifact (https://doi.org/10.5281/zenodo.15143242)
RUN mkdir /artifact/pbv && curl -L https://zenodo.org/records/15143242/files/artifact.tar.gz?download=1 | tar -xz -C /artifact/pbv/
RUN cd /artifact/pbv/artifact/evaluation/solvers && tar --zstd -xvf solvers.tar.zstd
RUN chmod +x /artifact/pbv/artifact/evaluation/solvers/pbvsolver

# Copy benchmarks
COPY ./benchmarks /artifact/benchmarks

# Copy scripts
COPY ./scripts/ /artifact/scripts

COPY --from=docker.io/astral/uv:latest /uv /uvx /usr/local/bin/

RUN cd ./scripts && uv sync --locked --no-install-project


