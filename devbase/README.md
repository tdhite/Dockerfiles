Developer Base for GO Language and AWS
--------------------------------------
Creates a base Docker image for use in developing Go language programs with
basic AWS tools for managing cloud resources.

##Requirements
The system building the docker container must have Docker installed and working.

## Usage
Run the `build.sh` script:

    ./build.sh

That will create the base docker image. Other image builds use this image as
a base for further build out of dev tools and interfaces.
