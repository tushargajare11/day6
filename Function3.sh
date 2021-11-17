#!/bin/bash -x

read -p "Enter The number" n
number=$n
rev=0
counter=1
function prime() {
for (( i=2;i<=$n;i++ ))
do

        if [[ $(($n%$i)) -eq 0 ]]
        then
                temp=$((count++))
        fi
done



         if [[ $temp -eq 2 ]]
         then
                echo " $n is not Prime Number "
         else
                echo " $n is Prime Number "
         fi
}


function palindrome() {
number=$n
while [ $number -ne 0 ]
do
      a=`expr $number % 10`
      rev=$((($rev * 10) + $a))
      number=`expr $number / 10`
done
if [ $rev -eq $n ]
then
     echo "$n is palindrome"
else
     echo "$n is not palindrome"
fi
}

prime $n
palindrome $n
