#!/bin/sh

for f in $(ls)
do
	echo -e "$f\t\t$(wc -l <$f) lines"
done

