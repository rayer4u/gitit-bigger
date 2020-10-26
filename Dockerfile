## Dockerfile for gitit

FROM debian:buster
MAINTAINER menduo "shimenduo@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# install git, ssh, supervisor
RUN apt-get update && apt-get install -y git gitit

RUN echo "root:github.com/menduo" | chpasswd

WORKDIR /data


ADD . /gitit-bigger

EXPOSE 7500

ENTRYPOINT ["/gitit-bigger/docker-entrypoint.sh"]