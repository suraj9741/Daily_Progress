##!/bin/bash -x
echo "Enter the number to print prime factors : "
read n
g=0
echo "Prime factor of $n is : "
for ((i=2;i<=$n;i++))
do
        if(($n%i==0))
        then
                isprime=1
                for ((j=2;j<=$i/2;j++))
                do
                        if(($i%$j==0))
                        then
                                isprime=0
                                break
                        fi
                done
                if (($isprime==1))
                then
                        echo $i
			a[$g]=$i
			g=$((g+1))
                fi
        fi
done
echo "how many prime factors : " $g
echo "${a[@]}"
