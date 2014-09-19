#!/bin/sh

reverse="$3"
if [ -z $reverse ]
then
	reverse='n'
fi

origin="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}|;:'<>,./?\\"
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
while [ $inputlength -gt 0 ]
do
	inputchar=`expr substr "$2" $inputlength 1`
	outputpos=`expr $inputpos + 1`
	if [ $reverse != 'r' ]
	then
		inputpos=`expr index "$origin" $inputchar`
		outputchar=`expr substr "$dest" $inputpos 1`
	fi
	if [ $reverse = 'r' ]
	then
		inputpos=`expr index "$dest" $inputchar`
		outputchar=`expr substr "$origin" $inputpos 1`
	fi
	inputlength=`expr $inputlength - 1`
	output="$outputchar$output";
done

echo $output