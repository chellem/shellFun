#!/bin/bash

# A script to write the following:
# 0 a b ... i
# 0 1 a ... h
# .
# .
# .
# 0 1 2 ... 9

a=0;
alpha=(a b c d e f g h i)
count=0 
echo
while [ "$a" -lt 10 ]
do
	b="$a"
	while [ "$b" -ge 0 ]
	do
		echo -n "$b "
		b=`expr $b - 1`
	done
	for i in "${alpha[@]}"
        do
        	echo -n "$i "
		if [ "$i" != "" ]
		then
                	(( count = $count + 1))
		fi
        done
	if [ $count -gt 0 ]
	then
		alpha[$count - 1]=""
	fi
	count=0
	echo
	a=`expr $a + 1`
done
