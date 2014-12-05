LiteIDE Developer Image for GO Language
---------------------------------------
Creates a Docker image for use in developing Go language programs with
LiteIDE. It is based on the [devbase](../devbase/) image so create
that first.

##Requirements
The system building the docker container must have Docker installed and working.

## Usage
Run the `build.sh` script:

    ./build.sh

That will create the liteide docker image. Other image builds use this image as
a base for further build out of dev tools and interfaces. For instance, see
[developer](../developer/)
