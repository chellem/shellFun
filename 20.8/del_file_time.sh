#!/bin/sh

time=$(date +'%I:%M%p')
echo "Current time: $time"

delFile(){
    file="test.txt"
    echo "deleting file $file"
    rm -rf "$file"
}

case "$time" in
    "10:00PM") delFile
    ;;
    "11:00PM") delFile
    ;;
    "5:00AM") # do something else
    ;;
esac