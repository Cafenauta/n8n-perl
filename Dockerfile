FROM n8nio/n8n:latest

USER root

# Install Perl and essential modules in Alpine
RUN apk update --no-cache && \
    apk add --no-cache perl perl-json perl-lwp

USER node
