#/bin/sh
echo
echo 4 22 7 $1 | awk '{ printf "The surface area is: %f", $1 * ($2/$3) * ($4 ^ 2) }'
echo