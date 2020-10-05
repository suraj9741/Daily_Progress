##!/bin/bash -x
echo "Enter the number which you want to check : "
read a
p=0
if (( $a<=1 ))
then
	p=1
fi
for ((i=2;i<$a;i++))
do
	d=`expr $a % $i`
	if(( $d==0 ))
	then
		p=1
	fi
done
if ((p==0))
then
	echo "$a is prime number."
else
	echo "$a is not prime number"
fi
