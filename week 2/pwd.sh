#!/bin/sh

# pwd example, change dir, display new path & return path to original one

CWD=$(pwd)
cd /tmp
echo "Current dir is $(pwd) and now getting back to $CWD"
cd $CWD && ls -l $CWD
