#!/bin/sh
CWD=$(pwd)
cd /tmp
echo "Current dir is $(pwd) and now getting back to $CWD"
cd $CWD && ls -l $CWD
