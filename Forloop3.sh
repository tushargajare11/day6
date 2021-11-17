#!/bin/bash -x

read -p "Enter the number to calculate power of Two :" n

for (( a=1;a<=n;a++ ))
do
	table=$((2**$a))
	echo "$table"
done

