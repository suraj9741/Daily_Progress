##!/bin/bash -x
start=100
countwin=0
countloss=0
betcount=0
while(($start<200&&$start>0))
do
	betcount=$((betcount+1))
	win=$((RANDOM%2))
	if(($win==0))
	then
		start=$((start+1))
		countwin=$((countwin+1))
	else
		start=$((start-1))
		countloss=$((countloss+1))
	fi
	if ((start==200))
	then
		echo "You reaches goal"
	elif ((start==0))
	then
		echo "You broke"
	fi
done
echo "Number of won $countwin"
echo "Number of loss $countloss"
echo "Number of bet played $betcount"
per=$(awk 'BEGIN {print '$countwin' / '$betcount' * '100'}')
lper=$(awk 'BEGIN {print '$countloss' / '$betcount' * '100'}')
echo "Winning persentage = $per %"
echo "losing persentage = $lper %"
