FROM nginx:latest


LABEL MAINTAINER="Sayed Atwh Sayed < sayed.atwh.sayed@gmail.com>" \
org.opencontainers.title="nginx image " \
org.opencontainers.description="nginx image with all config " \
org.opencontainers.created="2025-12-31" \
org.opencontainers.url="https://github.com/SayedAtwh" \
org.opencontainers.version=" latest" \
org.opencontainers.authors="sayed atwh"

RUN apt-get update && apt-get upgrade -y && apt-get install -y vim \
git \
gzip \
iputils-ping \
iproute2 \
net-tools \
dnsutils \
traceroute \
tcpdump \
curl \
wget \
cron 

EXPOSE 80

RUN vim --version 

ARG x=10
ENV y=20

RUN echo " the x is a : ${x}"
RUN echo " the y is a : ${y}"

