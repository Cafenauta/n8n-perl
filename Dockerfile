FROM n8nio/n8n:latest

USER root

RUN apk update --no-cache && \
    apk add --no-cache perl perl-json perl-libwww perl-lwp-protocol-https

USER node
