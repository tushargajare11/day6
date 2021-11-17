#!/bin/bash -x

head=0
tail=1

while [ $head -le 11 ] && [ $tail -le 11 ]
do
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 0 ]
then
	((head++))
	echo "Head";
else
	((tail))
	echo "Tail"
fi
done
