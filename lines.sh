#!/bin/sh

for f in *
do
	if [ -f "$f" ] 
	then
		wc -l < "$f"
	fi
done
