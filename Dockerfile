FROM ubuntu:22.10

RUN apt update && \
    apt-get update && \
    apt install -y curl git ripgrep unzip wget fzf

RUN git clone https://github.com/NKJM-R/nvim.git

RUN wget https://github.com/neovim/neovim/releases/download/v0.9.1/nvim-linux64.tar.gz && \
    tar -zxvf nvim-linux64.tar.gz && \
    mv nvim-linux64/bin/nvim usr/bin/nvim && \
    mv nvim-linux64/lib/nvim usr/lib/nvim && \
    mv nvim-linux64/share/nvim/ usr/share/nvim && \
    rm -rf nvim-linux64 && \
    rm nvim-linux64.tar.gz

RUN nvim -c JetpackSync -c quit -c quit

