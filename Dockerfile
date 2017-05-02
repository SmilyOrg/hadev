FROM ubuntu:xenial
ENV LANG C.UTF-8

WORKDIR /usr/local/src/hadev/home-assistant
RUN apt-get update
RUN apt-get install -y git python3-pip python3-dev libssl-dev libxml2-dev libxslt1-dev libjpeg-dev libffi-dev

ADD home-assistant .
RUN script/setup

VOLUME /usr/local/src/hadev/home-assistant
VOLUME /usr/local/src/hadev/config

CMD hass --config ../config