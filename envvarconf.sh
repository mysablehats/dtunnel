#!/bin/bash
#Script to load the custom connection preferences to set up the reverse ssh tunnel
#Edit these default preferences on each different docker 'client' computer
echo "Loading connection preferences"
#IP of the machine you are going to connect to
ROSDEFAULTMACHINE="10.188.18.74"
#Port of the machine you expect sshd to be working on --> do cat /etc/ssh/sshd_config and look for Port, if you are in doubt
DEFAULTDOWNPORT="2222"
#User on the remote machine we will use to connect our tunnel
DEFAULTUSER="frederico"
#Port this pc will accept connections from. This port must be unique to connect to this pc!
DEFAULTUPPORT="19998"


