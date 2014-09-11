#!/bin/sh

origin="abcdefghijklmnopqrstuvwxyz"
dest=""
keylength="$1"
temp=`expr substr $origin 1 $keylength`
len=`expr length $origin`
keylength=`expr $keylength + 1`
dest=`expr substr $origin $keylength $len`
dest="$dest$temp"

inputlength=`expr length $2`
while [ $inputlength -gt 0 ]
do
	while [ $len -gt 0 ]
	do
		char=`expr substr $origin $len 1`
		inputchar=`expr substr $2 $inputlength 1`
		if [ $char = $inputchar ]
		then
			outputchar=`expr substr $dest $len 1`
			#echo $outputchar
			output="$outputchar$output"
		fi
		inputlength=`expr $inputlength - 1`
		next=`expr $len - 1`
		#echo -e $char
		len=`expr $len - 1`
	done
done
echo $output

