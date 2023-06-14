FROM ubuntu:22.04

ARG CAIRO_GIT_TAG
ARG SCARB_VERSION

ENV CAIRO_GIT_TAG=${CAIRO_GIT_TAG}
ENV SCARB_VERSION=${SCARB_VERSION}

USER root
WORKDIR /root

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential curl ca-certificates git

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Install Cairo
RUN curl -L https://github.com/franalgaba/cairo-installer/raw/main/bin/cairo-installer | bash
ENV PATH="/root/.cairo/target/release:${PATH}"

# Install Scarb
RUN if [ -n "$SCARB_VERSION" ]; then \
    curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | bash -s -- -v ${SCARB_VERSION}; \
    else \
    curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | bash; \
    fi
ENV PATH="/root/.local/bin/scarb:${PATH}"