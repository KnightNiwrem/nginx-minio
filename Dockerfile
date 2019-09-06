FROM ubuntu:18.04

WORKDIR /
RUN apt-get update
RUN apt-get install -y gnupg2 nginx software-properties-common systemd
RUN add-apt-repository -y ppa:certbot/certbot
RUN apt-get update
RUN apt-get install -y python-certbot-nginx
