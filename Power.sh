#!/bin/bash -x

read -p "Enter the value" n

i=1

while [ $i -le $n ]
do
	count=$((2**$i))
	((i++))
	echo $count
	if [ $count -le 256 ]
	then
		echo "Correct input"
	else
		echo "Incorrect input"
	fi
done
