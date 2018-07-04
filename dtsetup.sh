#!/bin/bash

echo "this will create keys so you don't need to type your password all the time"

ssh-keygen

ssh-copy-id -p 2222 user@host
