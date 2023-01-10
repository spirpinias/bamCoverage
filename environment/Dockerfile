# hash:sha256:658cd6fe00a6eb8c96ea58e07e825019ec643e9a58139f786d9a465f92a25c2a
FROM registry.apps.codeocean.com/codeocean/ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget \
    && rm -rf /var/lib/apt/lists/*

COPY postInstall /
RUN /postInstall
