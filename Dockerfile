FROM n8nio/n8n:latest

USER root

# Alpine-compatible Perl install
RUN apk update && \
    apk add perl perl-utils perl-cpan perl-json perl-libwww

USER node
