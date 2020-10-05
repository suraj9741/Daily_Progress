##!/bin/bash -x
echo "Enter the number upto you want to print harmonic value : "
read n
sum=0
for ((i=1;i<=n;i++))
do
	div=$(awk 'BEGIN {print '1' / '$i'}' )
	sum=$(awk 'BEGIN {print '$sum' + '$div'}')
done
echo "Hormoni value of $n number is $sum"
