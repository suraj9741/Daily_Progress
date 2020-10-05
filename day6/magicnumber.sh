##!/bin/bash -x
echo "Think of number n between 1 to 100"
choice=2
start=1
end=100
while [ $choice -ne 1 ]
do
	mid=$((($start+$end)/2))
	echo "Is your no $mid ? "
	echo "1.yes"
	echo "2.Greter than this"
	echo "3.Less than this"
	read choice
	if [ $choice -eq 2 ]
	then
		start=$mid
	elif [ $choice -eq 3 ]
	then
		end=$mid
	elif [ $choice -eq 1 ]
	then
		echo "Magic number is $mid"
	else
		echo "Invalid number"
	fi

done
