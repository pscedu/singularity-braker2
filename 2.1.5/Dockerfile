FROM continuumio/miniconda3

LABEL "MAINTAINER"="icaoberg"
LABEL "EMAIL"="icaoberg@psc.edu"
LABEL "SUPPORT"="help@psc.edu"
LABEL "REPOSITORY"="http://github.com/pscedu/singularity-braker2"
LABEL "COPYRIGHT"="Copyright © 2021-2022 Pittsburgh Supercomputing Center. All Rights Reserved."
LABEL "VERSION"="2.1.5"

ENV VERSION 2.1.5
ENV LC_ALL C
RUN apt update && \ 
	apt install -y procps && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda config --add channels conda-forge && \
	conda config --add channels bioconda && \
	conda config --add channels default

RUN conda install braker2=$VERSION && \
	conda clean -a
