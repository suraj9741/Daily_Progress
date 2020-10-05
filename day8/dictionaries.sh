#!/bin/bash -x
declare -A sound
sound[dog]="bark"
sound[cata]="moo"
sound[bird]="tweet"
sound[wolf]="howl"

echo "valude of perticular dog " ${sound[dog]}
echo "all value print " ${sound[@]}
echo "all keys " ${!sound[@]}
echo "lenght of dictionary " ${#sound[@]}
unset sound[dog]
echo ${sound[@]}
sound[dog]="bye"
echo ${sound[@]}
sound[bird]="palbc"
echo ${sound[@]}
echo "not sound" ${!sound[dog]}
echo ${sound[@]}
