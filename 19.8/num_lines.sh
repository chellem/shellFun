#!/bin/sh

for f in $(ls)
do
	echo "$f\t\t$(wc -l <$f) lines"
done

