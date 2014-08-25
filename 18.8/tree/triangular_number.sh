#!/bin/sh

# something with triangular numbers

a=$1
c=""
max=$2
line=$3

while [ "$a" -lt $max ]
do
	b=$(( ( ( ($a + 1) * $a) / 2) ))
	d=$(( ( ( ($max + 1) * $max) / 2) ))
	half=$(( ($d - $b ) / 2 ))
	
	if [ -z "$line" ]
	then
		line=$b
	fi

	while [ "$b" -ge 1 -a "$b" -lt "$line"  ]
	do
		c="*${c}"
		b=`expr "$b" - 1`
	done
	
	if [ -n "$c" ]
	then
		for z in $(seq 0 $half)
		do
			c="-$c"
		done
		for z in $(seq 0 $half)
		do
			c="$c "
		done
		echo $c | tr - ' '
		unset c
	fi
	unset half
	a=`expr $a + 1`
done
