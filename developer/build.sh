#!/bin/sh
#title           :build.sh
#description     :This script will build a docker image via ./Dockerfile.j2
#author		 :tdhite
#date            :20141001
#license         :public domain, feel free to copy and use.
#version         :0.1
#usage		 :bash build.sh username
#notes           :The Dockerfile and run.sh get generated dynamicall via jinja.
#==============================================================================

# simple sanity check
if [ -z "${1}" ]; then
    echo "Error: invalid parameters."
    echo "usage: $0 username"
    exit 1
fi

# generate the dockerfile
python generate.py "$1" Dockerfile.j2 >Dockerfile
if [ $? -ne 0 ]; then
    echo "Error generating Dockerfile, aborting!"
    exit 1
fi

# generate the docker image
cd $(dirname $0)
docker build --rm=true -t "godev/$1" .

if [ $? -ne 0 ]; then
    echo "Error building image, aborting!"
    exit 2
fi

# generate the run command
python generate.py run.sh.j2 "$1" >run.sh
if [ $? -ne 0 ]; then
    echo "Error generating Dockerfile, aborting!"
    exit 3
else
    chmod +x ./run.sh
fi

