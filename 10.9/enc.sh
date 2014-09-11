#!/bin/sh



origin="abcdefghijklmnopqrstuvwxyz"
dest=""
keylength="$1"
temp=`expr substr $origin 1 $keylength`
len=`expr length $origin`
keylength=`expr $keylength + 1`
dest=`expr substr $origin $keylength $len`
dest="$dest$temp"

inputlength=`expr length "$2"`

while [ $len -gt 0 ]
do
	next=`expr $len - 1`
	char=`expr substr $origin $len 1`
	#echo -e $char
	while [ $inputlength -gt 0 ]
	do
		inputchar=`expr substr $2 $inputlength 1`
		if [ $char = $inputchar ]
		then
		
			outputchar=`expr substr $dest $len 1`
			#echo $outputchar
			output="$outputchar$output"
		fi
		inputlength=`expr $inputlength - 1`
	done
	inputlength=`expr length $2`

	len=`expr $len - 1`
done

echo $output
