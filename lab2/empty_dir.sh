#!/bin/sh

while read folder
do
	if [ -d "$folder" ]
	then
		emptyfolders=`ls -s "$folder" | grep 0`
		if [ `echo $emptyfolders | wc -l` -gt 0 ]
		then
			echo -e "$emptyfolders" | tr '0 ' '\000' >> output.log
		fi
	fi
	exit 1
done
