#!/bin/sh

encrypt=1
origin="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
dest=""

read -p "Enter your text: " text
read -p "Do you want to encrypt or decrypt? (e/d): "  operation
read -p "Shift length (number): " shiftLength

if [ "$operation" = "d" ]
then
	encrypt=0
fi

temp=`expr substr $origin 1 $shiftLength`
len=`expr length $origin`
shiftLength=`expr $shiftLength + 1`
dest=`expr substr $origin $shiftLength $len`
dest="$dest$temp"
inputlength=`expr length "$text"`
output=""
#echo $dest
while [ $inputlength -gt 0 ]
do
	inputchar=`expr substr "$text" $inputlength 1`
	outputpos=`expr $inputpos + 1`
	if [ $encrypt -eq 0 ]
	then
		inputpos=`expr index "$origin" $inputchar`
		outputchar=`expr substr "$dest" $inputpos 1`
	fi
	if [ $encrypt -eq 1 ]
	then
		inputpos=`expr index "$dest" $inputchar`
		outputchar=`expr substr "$origin" $inputpos 1`
	fi
	inputlength=`expr $inputlength - 1`
	output="$outputchar$output";
done
echo "The output: $output"