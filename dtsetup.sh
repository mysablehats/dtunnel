#!/bin/bash

echo "this will create keys so you don't need to type your password all the time"
source envvarconf.sh

ssh-keygen

ssh-copy-id -p $DEFAULTDOWNPORT $DEFAULTUSER@$ROSDEFAULTMACHINE
