# Go Language and AWS development environment basis.

# Start from base Ubuntu 14.04 LTS.
FROM phusion/baseimage
MAINTAINER Tom Hite <tdhite@gmail.us>

# Remove the need for apt-get (et al) confirmation
ENV DEBIAN_FRONTEND noninteractive

# get the git repo tool -- all devs should really have this
RUN (\
    mkdir -p /usr/local/bin \
    && curl -L -o /usr/local/bin/repo http://commondatastorage.googleapis.com/git-repo-downloads/repo \
    && chmod a+x /usr/local/bin/repo \
)

# Update the base system
RUN apt-get update

# Install go
RUN apt-get install -y golang

# install AWS tools
RUN apt-get install -y awscli
