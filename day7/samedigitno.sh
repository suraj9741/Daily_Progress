##!/bin/bash -x
l=0
for((i=1;i<=100;i++))
do
	if(($(($i%11))==0))
	then
		a[$l]=$i
		l=$((l+1))
	fi
done
echo "same digit number in between 0-100 : { ${a[@]} }"
