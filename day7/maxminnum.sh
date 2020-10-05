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
echo "${a[@]}"
max=0
smax=0
min=10000
smin=10000
for i in "${a[@]}"
do
        if [ $i -gt $max ]
        then
		smax=$max
                max=$i
	elif [ $i -gt $smax ]
	then
		smax=$i
        fi
        if [ $i -lt $min ]
        then
		smin=$min
		min=$i
	elif [ $i -lt $smin ]
	then
		smin=$i
        fi
done
echo "Maximum number is : $max"
echo "Minimum number is : $min"
echo "Maximum second number is : $smax"
echo "Minimum second number is : $smin"
