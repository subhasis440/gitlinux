#!/bin/bash

case $1 in
	"-h")
	echo "usage=$0 -h for help"
	echo "example: $0 -c 8"
	;;
	"-c")
        PASS=`date | sha256sum | cut -c  1-"$2"`
	echo -e  "your $2 password is = $PASS"
        ;;
	* )
        echo "usage=$0 -h for help"
        echo "example: $0 -c 8"
        ;;
esac
