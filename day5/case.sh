#!/bin/bash -x
FRUIT="Kiwi"

case "$FRUIT" in
	"apple") echo " Apple pie is quite tasty."
 	;;
	"banana") echo " I Like banana nut bread."
	;;
	"Kiwi") echo " New Zealand is famous for kiwi."
	;;
	*) echo "Defalt case"
	;;
esac
