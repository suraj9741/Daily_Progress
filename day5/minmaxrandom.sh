##!/bin/bash -x
echo  "Enter the Total no you want to enter:"
n=5
i=0

while [ $i -lt $n ]
do
	a[$i]=$((RANDOM%1000))
	i=`expr $i + 1`
done

echo "Output :"
for i in "${a[@]}"
do
	echo $i
done
max=0
min=10000
for i in "${a[@]}"
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
echo "Maximum number is : " $max
echo "Minimum number is : " $min
