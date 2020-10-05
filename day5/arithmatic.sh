##!/bin/bash -x
echo "Enter Three numbers : "
read a
read b
read c
arry[0]=$(awk 'BEGIN {print '$a' + '$b' * '$c'}')
arry[1]=$(awk 'BEGIN {print '$a' % '$b' + '$c'}')
arry[2]=`expr $a + $b / $c`
a=`expr $a + $b / $c`
echo $a
arry[3]=$(awk 'BEGIN {print '$a' * '$b' + '$c'}')
echo "1. a + b * c = ${arry[0]}"
echo "2. a % b + c = ${arry[1]}"
echo "3. c + a / b = ${arry[2]}"
echo "4. a * b + c = ${arry[3]}"
max=0
min=10000
for i in "${arry[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done
echo "Maximum value in above arethmatic opration : $max"
echo "Minimum value in above arethmatic opration : $min"
