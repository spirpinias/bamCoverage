# hash:sha256:19aac190e68328146237f1519f647d0af3b96ed410797db780000ad8a7383ac6
FROM registry.apps.codeocean.com/codeocean/mambaforge:22.9.0-3

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN conda install -y --channel=bioconda \
        deeptools==3.5.1 \
    && conda clean -ya

COPY postInstall /
RUN /postInstall
