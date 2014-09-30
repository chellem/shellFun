#!/bin/sh

# show number of lines for all files in current dir

for f in $(ls)
do
	echo "$f\t\t$(wc -l <$f) lines"
done

