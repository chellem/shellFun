#!/bin/sh

while read line
do
	count=1
	while [ $count -eq $count ]
	do
		user=`echo $line | cut -d ',' -f$count`
		if [ -z $user ]
		then
			exit 1
		fi
		mkdir "$user"
		fs sa "$user" "$user" rw
		count=`expr $count + 1`
	done
	exit 1
done
