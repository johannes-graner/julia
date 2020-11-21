FROM ubuntu:focal

WORKDIR /root

RUN apt update && apt install -y \
    git \
    vim \
    wget \
    iproute2 \
    iputils-ping \
    unzip

RUN  wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.3-linux-x86_64.tar.gz && \
 tar -xvf julia-1.5.3-linux-x86_64.tar.gz && \
 rm julia-1.5.3-linux-x86_64.tar.gz && \
 echo "export PATH=\"$PATH:julia-1.5.3/bin\"" >> ~/.bashrc
