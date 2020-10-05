##!/bin/bash -x
echo "Enter number you want to check : "
read n
rev=$n
p=0
while [ $n -ne 0 ]
do
	digit=$((n%10))
	p=$(((p*10)+digit))
	n=$((n/10))
done
echo "Reverse number is $p"
if [ $rev -eq $p ]
then
	echo "Number is palendrome"
else
	echo "Number is not palendrome"
fi
