##!/bin/bash -x
arr=(0 -1 2 -3 1)
echo "Array elements : { " ${arr[@]} " }"
b=${#arr[@]}
echo "size of array : " $b
f=1
for((i=0;i<$b-2;i++))
do
	for((j=$i+1;j<$b-1;j++))
	do
		for((k=$j+1;k<$b;k++))
		do
			if(($((${arr[$i]}+${arr[$j]}+${arr[$k]}))==0))
			then
				echo "${arr[$i]} ${arr[$j]} ${arr[$k]}"
				f=0
			fi
		done
	done
done
