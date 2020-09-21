FROM nvidia/cuda:10.1-cudnn7-runtime

RUN apt update && apt install curl -y

RUN curl -sSL https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh && bash /tmp/miniconda.sh -bfp /usr/local/ && rm -rf /tmp/miniconda.sh

RUN conda install -y python=3     && conda update conda -y    && conda clean --all --yes

RUN conda install pytorch torchvision cudatoolkit=10.1 -c pytorch

RUN conda install tensorflow-gpu
