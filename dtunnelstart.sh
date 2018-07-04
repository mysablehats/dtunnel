#!/bin/bash
echo "Welcome to Dtunnel"
echo "Running Tunnel to ROS machine. Keep this open"
ROSDEFAULTMACHINE="10.188.18.74"
DEFAULTDOWNPORT="2222"
DEFAULTUPPORT="19996"
DEFAULTUSER="frederico"

#if [ -z "$1" ];
#then
#  ROSMACHINE=$ROSDEFAULTMACHINE
#  echo "Using default ip for roscore: " $ROSMACHINE
#else
#  ROSMACHINE=$1
#  echo "Using ip for roscore: " $ROSMACHINE
#fi
#
#if [ -z "$2" ];
#then
#  PORT=$DEFAULTPORT
#  echo "Using default port for roscore: " $PORT
#else
#  PORT=$2
#  echo "Using port for roscore: " $PORT
#fi

ssh -N -R $DEFAULTUPPORT:localhost:$DEFAULTDOWNPORT $DEFAULTUSER@$ROSDEFAULTMACHINE

#here either add ssh keys with ssh-keygen and ssh-copy-id (you will need to do
#this on both machines because it is a reverse tunnel with 2 ssh servers!), or
#use spawn expect/send and pass the password as a parameter with $1 and so on...

echo "Closed down Dtunnel."
