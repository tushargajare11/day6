#!/bin/bash -x

read -p "Enter the number: " actual_number
number=$actual_number
rev=0
while [ $number -ne 0 ]
do
	n=`expr $number % 10`
	rev=$((($rev * 10) + $n))
	number=`expr $number / 10`
done
if [ $rev -eq $actual_number ]
then
	echo "$actual_number is palindrome"
else
	echo "$actual_number is not palindrome"
fi
