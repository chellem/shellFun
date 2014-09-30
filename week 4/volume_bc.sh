#/bin/sh

# Volume: 4/3 PI r^3

if [ -z $2 ]
then
    SCALE=10
else
    SCALE=$2    
fi

PI=`echo "scale=$SCALE; 22 / 7 " | bc`
VOLUME=`echo "scale=$SCALE; (4/3) * $PI * ($1 ^ 3)" | bc`

echo "Volume is: $VOLUME"