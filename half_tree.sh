#!/bin/sh

./simple_arg.sh 0 "*"
./simple_arg.sh 7 "*"
./simple_arg.sh 7 "*"

a=0
while [ "$a" -lt 3 ]
do
	echo "* * *"
	a=`expr $a + 1`
done
