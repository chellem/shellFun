#!/bin/sh
echo 4 3 22 7 $1 | awk '{ printf "Volume is: %f", ($1/$2) * ($3/$4) * ($5 ^ 3) }'
