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
else
	sum=`expr "$input" + "$2"`
fi

echo "Sum: $sum"
