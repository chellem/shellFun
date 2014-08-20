#!/bin/sh

a=0

echo
while [ "$a" -le 5 ]
do
	echo "$a"
	echo
	a=`expr "$a" + 1`
done

echo
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo
echo

for X in 0 5
do
	echo -e "1\t$X"
done
