# hash:sha256:fe012e5e10122757991438800d5deb64c2d4ac615681bacaab1aeb6a8beca077
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN conda install -y --channel=bioconda \
        deeptools==3.5.1 \
    && conda clean -ya

COPY postInstall /
RUN /postInstall
