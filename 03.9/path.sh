#/bin/sh

path="$1"
:
cd "$1"

count=0

while [ "$path" != "/" ]
do
	cd ..
	count=`expr "$count" + 1`
	path="$path" | cut -d '/' -f1-$
done
