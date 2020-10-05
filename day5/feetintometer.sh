#!/bin/bash -x
echo "Read the lenth of rectangular part feet : "
read l
echo "Read the bredth of rectangular part feet: "
read b
a=$(($l * $b))
echo "Area of plot in feet $a"
meterCon=0.092903
meter=$(awk 'BEGIN {print '$a' * '$meterCon'}')
echo " Area in meters $meter"
