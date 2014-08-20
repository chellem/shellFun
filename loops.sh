#!/bin/sh

loop0(){
	for i in 1 2 3 4 5
	do
		echo "this is $i from ${FUNCNAME[0]}"
	done
}

loop1(){
	for i in {1..5}
	do
		echo "this is $i from ${FUNCNAME[0]}"	
	done
}

loop2(){
	for i in {0..10..2}
	do
		echo "this is $i from ${FUNCNAME[0]}"
	done
}

loop3(){
	echo "obsolete"
	for i in $(seq 1 2 20)
	do
		echo "this is $i from ${FUNCNAME[0]}"
	done
}

loop4(){
	for((i=1;i<=5;i++))
	do
		echo "this is $i from ${FUNCNAME[0]}"
	done
}

loop5(){
	echo "infinite loop :P"
	for (( ; ; ))
	do
		echo "this is an infinite loop, CTRL+C to stop it or it will kill - the ninja way"
	done
}

loop6(){
	end=10
	for i in {1..15}
	do
		if [ "$i" -eq $end ]
		then
			echo "got you $end from ${FUNCNAME[0]}"
			break # <-- this point is this
		fi
	done
}

loop7(){
	end=10
	for i in {1..15}
	do
		if [ "$i" -lt $end ]
		then
			continue # <--
		fi
		echo "this is $i from ${FUNCNAME[0]}"
	done
}

loop8(){
	echo "using variables in loop"
	START=0;
	END=10
	for(( i=$START;i<=$END; i++ ))
	do
		echo "this is from $i from ${FUNCNAME[0]}"
	done
}

loop9(){
	i=0
	end=10
	while [ $i -lt $end ]
	do
		echo "this is $i from ${FUNCNAME[0]}"
		(( i = i + 1 ))
		
	done
}

loop10(){
	echo "loop in array from ${FUNCNAME[0]}"
	company=(Dell HP Oracle)
	for c in "${company[@]}"
	do
		echo "Company $c"
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
echo -e "\n\nThis is the function has has been executed: \n"
#type $func
declare -f $func
