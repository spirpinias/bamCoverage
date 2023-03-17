# hash:sha256:85ae1ca7632b5e2aae5c13cf7a32a3670c423df3b30fb800a4ff809666ba6ba5
FROM registry.apps.codeocean.com/codeocean/mambaforge3:22.11.1-4-python3.10-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN conda install -y --channel=bioconda \
        deeptools==3.5.1 \
    && conda clean -ya

COPY postInstall /
RUN /postInstall
