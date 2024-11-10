FROM ubuntu

RUN  apt-get update &&  apt-get install -y \
    neovim \
    curl \
    git  \
    build-essential \
    sudo \
    python3 \
    python3-pip \
    tree \
    libssl-dev \
    openssl \
    cmake \
    && rm -rf /var/lib/apt/lists/*


RUN usermod -aG sudo ubuntu && \
    echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN echo 'ubuntu:password' | chpasswd

USER ubuntu

WORKDIR /home/ubuntu


RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN echo "source $HOME/.cargo/env" >> /home/ubuntu/.bashrc
ENV PATH="/home/ubuntu/.cargo/bin:${PATH}"

COPY --chown=ubuntu:ubuntu ./local_config /home/ubuntu/.config
