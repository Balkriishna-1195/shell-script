#!/bin/bash

echo "All Variables: $@"
echo "Number of variables passed: $#"
echo "script nmae: $0"
echo "Current working Directory: $PWD"
echo "Home Directory of Current user: $HOME"
echo "Which user is running the script: $USER"
echo "Hostname: $HOSTNAME"
echo "process ID of current shell script: $$"
sleep 60 &
echo "process ID of last background command: $!"