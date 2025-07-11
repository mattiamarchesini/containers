FROM gns3/ubuntu:noble

# Install pipx and its dependencies
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y python3-pip python3-venv git pipx

ENV PIPX_BIN_DIR='/usr/bin/'
RUN pipx ensurepath

# Install gns3-server using pipx
RUN pipx install gns3-server

# Expose the default GNS3 server port
EXPOSE 3080

# Default user and password is admin

ENTRYPOINT ["gns3server"]
