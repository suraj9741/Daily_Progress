##!/bin/bash -x
echo "1.convert Celsius to Fahrenheit"
echo "2.convert Fahrenheit to Celsius"
read a
if((a==1))
then
	echo "Enter value in Celsius : "
	read c
	if((c<=100&&c>=0))
	then
		t=$(awk 'BEGIN {print '$c' * '9' / '5'}')
		f=$(awk 'BEGIN {print '$t' + '32'}')
		echo "$c Celsius = $f Fahrenheit"
	else
		echo "You should enter value in between 0 to 100"
	fi
else
	echo "Enter value in Fahrenheit : "
        read c
        if((c<=212&&c>=32))
        then
                f=$(awk 'BEGIN {print '$c' - '32'}')
                t=$(awk 'BEGIN {print '$f' * '5' / '9'}')
		echo "$c Fahrenheit = $t Celsius"
        else
                echo "You should enter value in between 32 to 212"
        fi
fi
