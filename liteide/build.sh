#!/bin/sh
#title           :build.sh
#description     :This script will build the docker image via ./Dockerfile
#author		 :tdhite
#date            :20141001
#license         :public domain, feel free to copy and use.
#version         :0.1
#usage		 :bash build.sh
#notes           :Installs X11/LXDE environment, LiteIDE, git, mercurial, vim
#==============================================================================
cd $(dirname $0)
docker build --rm=true -t tdhite/liteide .
