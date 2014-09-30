#!/bin/sh

# half a tree

./simple_loop.sh 0 "*"
./simple_loop.sh 7 "*"
./simple_loop.sh 7 "*"

a=0
while [ "$a" -lt 3 ]
do
	echo "* * *"
	a=`expr $a + 1`
done
