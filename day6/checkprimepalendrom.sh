##!/bin/bash -x
check_palinedrome()
{
	n=$1
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
	        echo "$1 Number is palendrome"
	else
	        echo "$1 Number is not palendrome"
	fi
}
check_prime()
{
	a=$1
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
}
echo "Enter the number u want to check : "
read t
check_prime $t
check_palinedrome $t
if [ $p -gt 0 ]
then
	check_prime $p
fi
