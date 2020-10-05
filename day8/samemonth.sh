##!/bin/bash -x
f=1
while ((f<=50))
do
        d=$((RANDOM%12+1))
        temp[$f]=$d
	echo "Person $f : ${temp[$f]}"
        f=$((f+1))
        case "$d" in
        1)dice[$d]=$((${dice[$d]}+1))
        ;;
        2)dice[$d]=$((${dice[$d]}+1))
        ;;
        3)dice[$d]=$((${dice[$d]}+1))
        ;;
        4)dice[$d]=$((${dice[$d]}+1))
        ;;
        5)dice[$d]=$((${dice[$d]}+1))
        ;;
        6)dice[$d]=$((${dice[$d]}+1))
        ;;
	7)dice[$d]=$((${dice[$d]}+1))
        ;;
	8)dice[$d]=$((${dice[$d]}+1))
        ;;
	9)dice[$d]=$((${dice[$d]}+1))
        ;;
	10)dice[$d]=$((${dice[$d]}+1))
        ;;
	11)dice[$d]=$((${dice[$d]}+1))
        ;;
	12)dice[$d]=$((${dice[$d]}+1))
        ;;
        esac
done
echo "Total having birthdays in the same month : "
for i in ${!dice[@]}
do
        echo "Month $i : ${dice[$i]}"
done
