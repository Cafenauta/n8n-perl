FROM n8nio/n8n:latest-debian

USER root

RUN apt-get update && \
    apt-get install -y perl libjson-perl libwww-perl liblwp-protocol-https-perl && \
    rm -rf /var/lib/apt/lists/*

USER node
