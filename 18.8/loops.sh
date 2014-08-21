#!/bin/sh

loop0(){
	for i in 1 2 3 4 5
	do
		echo "this is $i"
	done
}

loop1(){
	echo "obsolete"
	for i in $(seq 1 2 20)
	do
		echo "this is $i"
	done
}

loop3(){
	i=0
	end=10
	while [ $i -lt $end ]
	do
		echo "this is $i"
		i=`expr $i + 1`
		
	done
}

if [ -z "$1" ]
then
	echo "You must specify an arguments (0...)"
	exit 1
fi

func="loop$1"

echo -e "\nOutput:\n"
$func