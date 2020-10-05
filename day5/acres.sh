##!/bin/bash -x
echo "Read the lenth of rectangular part feet : "
read l
echo "Read the bredth of rectangular part feet: "
read b
a=$(($l * $b))
echo "Area of plot in feet $a"
meterCon=0.092903
meter=$(awk 'BEGIN {print '$a' * '$meterCon' * '25'}')
echo "Area of 25 plots in meters $meter"
Sqmetertoacre=0.000247105
acre=$(awk 'BEGIN {print '$meter' * '$Sqmetertoacre'}')
echo "In acres $acre"
