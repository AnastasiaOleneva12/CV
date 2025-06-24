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

WORKDIR /resume/CV

COPY CV/ ./

RUN ls -l ./

RUN pdflatex -interaction=nonstopmode main.tex ; \
    (grep -i "!" main.log || true) ; \
    pdflatex -interaction=nonstopmode main.tex

CMD ["bash"]
