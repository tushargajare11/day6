#!/bin/bash -x

echo "Select the option for conversion"
echo "1.Fahrenheit to Celsius :"
echo "2.Celsius to Fahrenheit :"

read -p "select option 1 or 2 : " option

function CenToFar()
{
	degC=$1
	x=9
	y=5
	#result1=$(($degC*(9/5))+32)
	echo $result1

	var1=$(echo $x $y| awk '{print $1/$2}')
	a=$(echo $var1 $degC | awk '{print $1*$2}')
	echo degF=$(( $a + 32 ))
}

function FarToCen()
{
	degF=$1
	x=9
	y=5

	var2=$(echo $x $y | awk '{print $2/$1}')
	b=$(( $degF - 32 ))
	echo degC=$(echo $b $var2 | awk '{print $1*$2}')
}

case $option in
		1)
			read -p " Enter the value : " degC
			result="$(FarToCen $degC )"
			echo $result ;;
		2)
			read -p " Enter the value : " degF
			result="$(CenToFar $degF )"
			echo $result ;;
		*)
			echo "value must 1 or 2" ;;
esac
