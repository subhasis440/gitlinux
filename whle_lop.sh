#!/bin/bash

VAR1=unset
PREV=$VAR1

while 	echo "prevous-var=$PREV"
	echo
	PREV=$VAR1
	[ "$VAR1" != end ]
do
	echo -n "give variable:"
	read VAR1
	echo "varibale #1=$VAR1"
done

exit=0
