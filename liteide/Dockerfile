# Development tools for Go Programming (LXDE with LiteIDE)

# Start from the development base
FROM tdhite/devbase
MAINTAINER Tom Hite <tdhite@gmail.us>

# Remove the need for apt-get (et al) confirmation
ENV DEBIAN_FRONTEND noninteractive

# install basic packages for development and LXDE
RUN apt-get install -y git tig mercurial vim lxde tightvncserver

# install LiteIDE
RUN (\
    cd /usr/local\
    && curl -L -o liteide.tar.bz2 https://golangide.googlecode.com/files/liteidex20.1.linux-amd64.tar.bz2\
    && tar xvjf liteide.tar.bz2\
)
