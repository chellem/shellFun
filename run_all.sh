#1/bin/sh

for SH in ./*.sh
do
	if [ "$SH" = "$0" ]
	then
		sh $SH
	fi 
done
