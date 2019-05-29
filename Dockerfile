FROM debian:stable
MAINTAINER kjerabek

USER root

RUN apt-get update && apt-get install -y wget bzip2 git unzip gcc

RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda3 \
    && rm Miniconda3-latest-Linux-x86_64.sh

RUN /miniconda3/bin/conda install jupyter scipy matplotlib
RUN /miniconda3/bin/pip install qiskit

RUN mkdir /notebook
VOLUME /notebook

EXPOSE 8888

COPY startup.sh /run.sh
CMD bash /run.sh
