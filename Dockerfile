# Use a base image with necessary build tools
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    wget \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    libcurl4-gnutls-dev \
    bzip2 \
    libncurses5-dev \
    git \
    # Remove Cached Package Lists
    && rm -rf /var/lib/apt/lists/*

# Install samtools version 1.21
RUN wget https://github.com/samtools/samtools/releases/download/1.21/samtools-1.21.tar.bz2 && \
    tar -xjf samtools-1.21.tar.bz2 && \
    cd samtools-1.21 && \
    ./configure --prefix=/usr/local && make && make install && \
    # Removing installation files
    cd .. && rm -rf samtools-1.21*

# Install minigraph from the GitHub repository
RUN git clone https://github.com/lh3/minigraph.git && \
    cd minigraph && \
    # Removing -msse4 flag to make installation compatible with Docker
    sed -i 's/-msse4//' Makefile && \
    make && \
    cp minigraph /usr/local/bin && \
    # Removing installation files
    cd .. && rm -rf minigraph

# Set default command
CMD ["bash"]

