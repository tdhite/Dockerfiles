Developer Specific Docker Image
-------------------------------
Creates a developer specific image for use in developing github housed code
that may exist in private repositories. Public repositories are, of course,
also supported.

##Requirements
The system building the docker container must have python installed with jinja2
template support. The following files must exist in order for the Docker build
to succeed:

* .netrc: this file *must* exist and contain valid github API token (see [github tokens](generate token with https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) for details);
* .aws/config: this file *must* exist and contain valid *awscli* configuration settings for the user;
* .ssh/config: this file *must* exist and contain a valid github SSH config for use in cloning and committing to the private repositories;
* .ssh/id_rsa: this file *must* exist and contain the private key for the github user that will clone/commit;
* .ssh/id_rsa.pub: this file *should* exist and if so, must contain the public key for the github user that will clone/commit;
* .vnc/passwd: this file *must* exist and contain a vncpasswd generate file for securing the vncserver sessions;
* .vnc/xstartup: this file *must* exist and contain a valid vncserver startup script;

## Usage
Run the `build.sh` script:

    ./build.sh tdhite

Then run the `run.sh` script to start the container.

    ./run.sh

That will start the container and runs /bin/bash as root. From there, merely execute, for example, the following to start a vncserver:

    su - tdhite
    vncserver -geomerty 1500x844 :0

Do not exit the shell -- just leave it running. Connect to the vnc session with your client at localhost:1. For example:

    vncviewer localhost:1

When you're all done for the day (or work session or whatever), kill the vnc
server:

    vncserver -kill :0

Then exit all the way ouf of the shell. Docker will stop the container but not
delete it. Next time you run ./run.sh, it just resumes that container and
you do the same as above as if you just started a new container.
