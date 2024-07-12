FROM --platform=linux/arm64 r-base:4.3.2

# Install system dependencies and TeX Live
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    texlive-full \
    fonts-texgyre \
    fonts-ebgaramond \
    && rm -rf /var/lib/apt/lists/*

# Install Quarto
ENV QUARTO_VERSION="1.5.54"
RUN wget "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-arm64.deb" && \
    dpkg -i quarto-${QUARTO_VERSION}-linux-arm64.deb && \
    apt-get update && apt-get install -f -y && \
    rm quarto-${QUARTO_VERSION}-linux-arm64.deb

# Debug: List installed fonts
RUN fc-list

# Set working directory
WORKDIR /app

# Set the default command to bash
CMD ["/bin/bash"]
