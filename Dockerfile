FROM nvidia/cuda:10.1-cudnn7-runtime

ENV LANG C.UTF-8

RUN apt-get update && apt-get install curl -y && apt-get clean

RUN curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh &&\
    bash /tmp/miniconda.sh -bfp /usr/local/ && rm -rf /tmp/miniconda.sh && \
    conda install -y python=3 && conda update conda -y && conda clean --all --yes

RUN conda install pytorch torchvision cudatoolkit=10.1 -c pytorch

RUN conda install -c anaconda tensorflow-gpu
