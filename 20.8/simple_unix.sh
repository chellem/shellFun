#!/bin/sh

# A script to write the following:
# 0 a b ... i
# 0 1 a ... h
# .
# .
# .
# 0 1 2 ... 9

a=0
var="abcdefghi"

alpha(){
	c=1
	len=$1
	while [ "$c" -le $len ]
	do
		f=`expr substr $var $c 1`
		echo -n "$f "
		c=`expr $c + 1`
	done
	if [ -n $var ]
	then
		len=`expr $len - 1`
		var=`expr substr $var 1 $len`
	fi
}

echo
while [ "$a" -lt 10 ]
do
	b="$a"
	while [ "$b" -ge 0 ]
	do
		echo -n "$b "
		b=`expr $b - 1`
	done
	if [ ! -z $var ]
	then
		len=`expr length $var`	
		alpha $len
	fi
	a=`expr $a + 1`
	echo
done
echo