#############################################################
# Dockerized slcli - check the docs on slcli below          #
# http://softlayer-python.readthedocs.io/en/latest/cli.html #
#############################################################

FROM python:2.7-alpine

MAINTAINER Jozko Skrablin <jozko@zomg.si>

RUN apk --no-cache add bash
RUN adduser -D -u 5000 cli

RUN pip --no-cache-dir install --upgrade pip && \ 
  pip --no-cache-dir install softlayer

ADD ./bashrc /home/cli/.bashrc
ADD ./slsetup /usr/local/bin/slsetup
RUN chmod +x /usr/local/bin/slsetup


USER cli
WORKDIR /home/cli
ENTRYPOINT ["/bin/bash"]
