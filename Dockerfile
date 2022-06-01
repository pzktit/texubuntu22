# [Choice] Ubuntu version: ubuntu-22.04 (the only tested), ubuntu-20.04, ubuntu-18.04
ARG VARIANT=ubuntu-22.04
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

ENV REBUILD_AT 2022.06.01_at_950

# TeXLive packages and tools
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends \
#     texlive-base \
#     texlive-bibtex-extra \
#     texlive-binaries \
#     texlive-extra-utils \
#     texlive-font-utils \
#     texlive-fonts-extra-links \
#     texlive-fonts-extra \
#     texlive-fonts-recommended \
#     texlive-lang-english \
#     texlive-lang-greek \
#     texlive-lang-polish \
#     texlive-latex-base \
#     texlive-latex-extra \
#     texlive-latex-recommended \
#     texlive-luatex \
#     texlive-pictures \
#     texlive-plain-generic \
#     texlive-pstricks \
#     texlive-publishers \
#     texlive-science \
#     texlive-xetex \
#     texlive \
#     chktex latexdiff latexmk retext

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install texlive-full \
    chktex latexdiff latexmk retext git aspell aspell-en aspell-pl


RUN wget -q --show-progress https://github.com/valentjn/ltex-ls/releases/download/15.2.0/ltex-ls-15.2.0-linux-x64.tar.gz -P /tmp && tar xf /tmp/ltex-ls-15.2.0-linux-x64.tar.gz --strip-components=2 -C /usr --exclude={*.md,*.xml} && rm /tmp/ltex-ls*

LABEL Piotr ZAWADZKI "pzawadzki@polsl.pl"
