#!/bin/bash -x
a=$((RANDOM%10))
echo $a
Q=`expr $a % 2`
if [ $Q -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi

