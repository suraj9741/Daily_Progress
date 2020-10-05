##!/bin/bash -x
echo "Enter the range : "
read b
read a
for((j=$b;j<=$a;j++))
do
	p=0
	if (( $j<=1 ))
	then
        	p=1
	fi
	for ((i=2;i<$j;i++))
	do
        	d=`expr $j % $i`
        	if(( $d==0 ))
        	then
                	p=1
        	fi
	done
	if ((p==0))
	then
        	echo "$j"
	fi
done
