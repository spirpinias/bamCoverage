# hash:sha256:d54e375b5eab9db4714cfd7c2eb2210169ea7201eb87e3acc05a3476d6923792
FROM registry.apps.codeocean.com/codeocean/ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates=20211016ubuntu0.22.04.1 \
        git=1:2.34.1-1ubuntu1.5 \
        wget=1.21.2-2ubuntu1 \
    && rm -rf /var/lib/apt/lists/*

COPY postInstall /
RUN /postInstall
