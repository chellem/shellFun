#/bin/sh

# 4 PI r^2

if [ -z $2 ]
then
    SCALE=10
else
    SCALE=$2    
fi

PI=`echo "scale=$SCALE; 22 / 7 " | bc`
SA=`echo "scale=$SCALE; 4 * $PI * ($1 ^ 2)" | bc`

echo "The surface area is: $SA"