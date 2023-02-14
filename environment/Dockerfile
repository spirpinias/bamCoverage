# hash:sha256:43218b168e218b5b26f1d86b00641ae054ececa6f0d123e1556496633263afac
FROM registry.apps.codeocean.com/codeocean/mambaforge:22.9.0-3

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN conda install -y --channel=bioconda \
        deeptools \
    && conda clean -ya

COPY postInstall /
RUN /postInstall
