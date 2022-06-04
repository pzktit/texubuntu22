# [Choice] Ubuntu version: ubuntu-22.04 (the only tested), ubuntu-20.04, ubuntu-18.04

#ARG VARIANT=ubuntu-22.04
#FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# Build from LTeX LS image, which in turn is based on the above. You can switch to the above FROM. In that case ltex-ls will be downloaded (few hundred MB) at very devcontainer build. 
FROM pzawad/ltexls 

ENV REBUILD_AT 2022.06.04_at_9

# TeXLive packages and tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    texlive-base \
    texlive-bibtex-extra \
    texlive-binaries \
    texlive-extra-utils \
    texlive-font-utils \
    texlive-fonts-extra-links \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-lang-english \
    texlive-lang-greek \
    texlive-lang-polish \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-pictures \
    texlive-plain-generic \
    texlive-pstricks \
    texlive-publishers \
    texlive-science \
    texlive-xetex \
    texlive \
    chktex latexdiff latexmk retext \
    git aspell aspell-en aspell-pl

LABEL Piotr ZAWADZKI "pzawadzki@polsl.pl"
