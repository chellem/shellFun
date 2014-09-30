#!/bin/sh

while read folder
do
	empty=`find "$folder" -type d -empty`
	if [ -n "$empty" ]
	then
		rm -rf $empty
	fi
	exit 1
done
