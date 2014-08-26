#!/bin/sh
#

a=0
var="1"

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
		var=$var"1"
	fi
}

VALUE=$1
SYMBOL="$2"
if [ -z "$VALUE" ]
then
	VALUE=6;
fi
while [ "$VALUE" -gt 0 ]
do
	b="$VALUE"
	while [ "$b" -gt 0 ]
	do
		if [ -z "$SYMBOL" ]
		then
			echo -n "$b "
		else
			echo -n "$SYMBOL "
		fi
		b=`expr $b - 1`
	done
	len=`expr length $var`
	alpha $len
	c=2
	while [ "$c" -le 6 ]
	do
		if [ -z "$SYMBOL" ]
		then
			echo -n "$c "
		else
			echo -n "$SYMBOL "
		fi
		c=`expr $c + 1`
	done
	echo
	VALUE=`expr $VALUE - 1`
done