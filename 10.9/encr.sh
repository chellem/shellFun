#!/bin/sh

reverse=$3
if [ -z $reverse ]
then
	reverse='n'
fi

origin="abcdefghijklmnopqrstuvwxyz"
dest=""
keylength="$1"
temp=`expr substr $origin 1 $keylength`
len=`expr length $origin`
keylength=`expr $keylength + 1`
dest=`expr substr $origin $keylength $len`
dest="$dest$temp"
inputlength=`expr length "$2"`
output=""
#echo $dest
#exit 1
while [ $inputlength -gt 0 ]
do
	while [ $len -gt 0 ]
	do
		if [ $reverse != 'r' ]
		then
			char=`expr substr $origin $len 1`
		fi
		if [ $reverse = 'r' ]
		then
			char=`expr substr $dest $len 1`
		fi
		inputchar=`expr substr "$2" $inputlength 1`
		if [ "$char" = "$inputchar" ]
		then
			if [ $reverse != 'r' ]
			then
				outputchar=`expr substr $dest $len 1`
			fi
			if [ $reverse = 'r' ]
			then
				#x=`expr $len + $keylength`
				outputchar=`expr substr $origin $len 1`
			fi
			#echo $outputchar
			output="$outputchar$output"
		fi
		len=`expr $len - 1`
	done
	len=`expr length $origin`
	inputlength=`expr $inputlength - 1`
done

echo $output



