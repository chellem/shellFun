#1/bin/sh

i=1
number=10

while [ "$i" -le "$number" ]
do
	echo $i
	i=$(( $i + 1 ))
done
