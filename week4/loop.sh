#!/bin/sh
a=0
fill="1"
VALUE=$1
ONE=1
reverse() {
	c=""
	for z in $(seq 0 $1)
	do
		if [ "$z" -gt 0 ]
		then
			c="1 $c"
		fi
	done
	zz=`expr $1 - 2`
	for z in $(seq 0 $zz)
	do
		c="$c 1"
	done
	b=2
	while [ "$b" -le $2 ]
	do
		c="$c $b"
		b=`expr $b + 1`
	done
	echo $c
}

if [ -z "$VALUE" ]
then
	VALUE=6;
fi
while [ "$VALUE" -gt 0 ]
do
	b="$VALUE"
	while [ "$b" -gt 0 ]
	do
		echo -n "$b "
		b=`expr $b - 1`
	done
	len=`expr length $fill`
	reverse $ONE $VALUE
	VALUE=`expr $VALUE - 1`
	ONE=`expr $ONE + 1`
done
