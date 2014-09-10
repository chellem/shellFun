#/bin/sh

dir_count=$( ls -l "$1" | grep '^d' | wc -l )

echo $dir_count

while [ "$dir_count" -gt 0 ]
do
	for f in *
	do
		if [ -d "$f" ]
		then
			echo $f
		fi
	done
	dir_count=`expr $dir_count - 1`
done
