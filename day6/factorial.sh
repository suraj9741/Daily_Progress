##!/bin/bash -x
echo "Enter the number factorial : "
read n
fact=1
if [ $n -eq 0 ]
then
	fact=1
fi
for ((i=$n;i>0;i--))
do
	fact=$(awk 'BEGIN {print '$fact' * '$i'}')
done
echo "factorial of $n = $fact"
