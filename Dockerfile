FROM n8nio/n8n:latest

USER root

RUN cat /etc/os-release


RUN /sbin/apk update --no-cache && \
    /sbin/apk add --no-cache perl perl-json perl-libwww perl-lwp-protocol-https



USER node
