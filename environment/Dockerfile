# hash:sha256:2f1b49439feac59f3ace29982181d09257c34b42cc296aa59d1a0ebd9371539e
FROM registry.apps.codeocean.com/codeocean/ubuntu:20.04

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
