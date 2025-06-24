FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    texlive-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-pictures \
    texlive-science \
    cm-super \
    dvipng \
    && apt-get clean

WORKDIR /resume

COPY CV/ ./CV/

RUN pdflatex -interaction=nonstopmode CV/main.tex

CMD ["bash"]
