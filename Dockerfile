FROM n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y perl cpanminus \
  && cpanm --notest JSON LWP::Simple

USER node
