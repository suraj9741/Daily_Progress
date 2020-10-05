##!/bin/bash -x
echo  "Enter the Total no you want to enter:"
read n
i=0
while [ $i -lt $n ]
do
        a[$i]=$((RANDOM%899+100))
        i=`expr $i + 1`
done
echo "Output :"
echo "Original array : ${a[@]}"
for((i=0;i<$n;i++))
do
	for((j=0;j<$n-$i-1;j++))
	do
		if [ ${a[j]} -gt ${a[$((j+1))]} ]
		then
			temp=${a[j]}
			a[$j]=${a[$((j+1))]}
			a[$((j+1))]=$temp
		fi
	done
done
echo "Sorted array   : "${a[@]}
echo "Maximum number is : .................. ${a[$((n-1))]}"
echo "Minimum number is : .................. ${a[0]}"
echo "Maximum second number is :  .......... ${a[$((n-2))]}"
echo "Minimum second number is :  .......... ${a[1]}"

