FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y net-tools \
    tcpdump \
    vim \
    iperf3 \
    iftop \
    ethtool \
    netcat \
    iputils-ping \
    wget \
    curl \
    iproute2 \
    redis-tools \
    dnsutils \
    telnet \
    git \
    postgresql-client \
    traceroute \
    jq \
    sudo

RUN curl -L https://raw.githubusercontent.com/jinyanchou/dotfiles/master/install.sh| bash

COPY entrypoint.bash ./
ENTRYPOINT ["/bin/bash", "./entrypoint.bash"]
