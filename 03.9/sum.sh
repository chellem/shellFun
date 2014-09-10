#/bin/sh

input="$1"
sum=0
if [ "$input" -lt 10  ]
then
	while [ "$input" -ge 0 ]
	do
		sum=`expr "$sum" + "$input"`
		input=`expr "$input" - 1`		
	done	
	echo "Sum: $sum"
else
	echo "Input must be less than 10"
fi
