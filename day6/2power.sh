##!/bin/bash -x
echo "Enter the value up to you want to print : "
read n
sum=1
for ((i=0;i<n;i++))
do
	sum=$((sum * 2))
	echo $sum
done
