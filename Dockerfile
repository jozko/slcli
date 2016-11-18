############################################################
# Dockerfile to run slcli
# http://softlayer-python.readthedocs.io/en/latest/cli.html
# Based on Alpine to keep container as small as possible
############################################################

# Set the base image to Python 2.7, Alpine based
FROM python:2.7-alpine

# File Author / Maintainer
MAINTAINER jozko.skrablin@si.ibm.com

# Update the repository sources list and container packages
RUN apk update; apk upgrade

################## BEGIN INSTALLATION ######################

# Bash is always nice to have
RUN apk add bash

# Upgrade pip
RUN pip install --upgrade pip

# Install slcli
RUN pip install softlayer

# Add slsetup script and make it executable
ADD ./slsetup /usr/local/bin/slsetup
RUN chmod +x /usr/local/bin/slsetup

##################### INSTALLATION END #####################


