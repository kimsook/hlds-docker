FROM debian:bullseye-slim

# Add support for 32-bit
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
      libc6:i386 \
      libstdc++6:i386 \
      gcc-multilib \
      g++-multilib \
      wget \
      curl \
      unzip \
      tar \
      bash \
      ca-certificates \
      lib32z1 \
      lib32gcc-s1 \
      steamcmd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
