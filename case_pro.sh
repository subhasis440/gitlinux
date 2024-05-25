#!/bin/bash

while [ $# -eq 0 ]
do
	echo "enter valid option"
	exit 1
done
while [ $# -gt 0 ]
do
	case "$1"  in
	"-h" | "-hp")
	echo "this is help section"
	exit 2
	;;
	"-f" | "-fl")
	FL=$2
	WD=`cat $FL | wc -w`
	LN=`cat $FL | wc -l`
	LT=`cat $FL | wc -m`
	echo ---------
	echo "FILE:$FL"
	echo ---------
	sleep 1
	echo "words are $WD"
	sleep 1
	echo "lines are $LN"
	sleep 1
	echo "letter are $LT"
	exit 3
	esac
done
