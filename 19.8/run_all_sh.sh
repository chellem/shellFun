#1/bin/sh

# run all script in this dir, except me

for SH in ./*.sh
do
	if [ "$SH" != "$0" ]
	then
		sh $SH
	fi 
done
