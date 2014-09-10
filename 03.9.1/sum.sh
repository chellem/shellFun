#!/bin/sh

sum=0
for x in "$@"
do
	if [ "$x" -gt 10 ]
	then
		sum=`expr $sum + $x`
	fi
done
echo "Sum: $sum"
