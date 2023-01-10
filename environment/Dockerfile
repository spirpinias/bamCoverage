# hash:sha256:011098b0ebb16660d3e401e915deb08d081e52e70eed6964d1558067808f0c6d
FROM registry.apps.codeocean.com/codeocean/ubuntu:22.04

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
