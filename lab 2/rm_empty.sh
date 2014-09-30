#!/bin/sh

while read folder
do
	empty=`ls -s "$folder" | grep 0`
	if [ -n "$empty" ]
	then
		rm -rf $empty | tr '0 ' ' '
	fi
	exit 1
done
