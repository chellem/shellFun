#!/bin/sh

VALUE=$1
SYMBOL="$2"

if [ -z "$VALUE" ]
then
	VALUE=0;
fi

while [ "$VALUE" -lt 10 ]
do
	b="$VALUE"
	while [ "$b" -ge 0 ]
	do
		OUTPUT=""
		if [ -z "$SYMBOL" ]
		then
			echo -n "$b "
		else
			echo -n "$SYMBOL "
		fi
		b=`expr $b - 1`
	done
	echo
	VALUE=`expr $VALUE + 1`
done
