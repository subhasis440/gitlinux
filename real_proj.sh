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
	echo "Usage: $0 [Option..]"
	echo "Option:"
	echo -e "\t" "-c , --cpu"
	echo -e "\t" "\t"  "cpu infomat"
	echo -e "\t" "-m , --mem"
        echo -e "\t" "\t" "memory infomat"
	echo -e "\t" "-s , --sys"
        echo -e "\t" "\t" "system infomat"
	echo -e "\t" "-ip , --ipadr"
        echo -e "\t" "\t" "ip infomation"
	echo -e "\t" "-k , --knl"
        echo -e "\t" "\t" "kernel infomation"
	echo "Created by Subhasis"
	exit 2
	;;
	"-c" | "--cpu")
        CPU=$(cat /proc/cpuinfo | grep "model name" | cut -c 14-50 | head -1)
        echo "CPU infoma: $CPU"
        echo
        shift
	;;
	"-k" | "--knl")
        KER=`uname -a | awk '{print "Linux", $3, $4}' | sed 's/#29~22.04.1-//'`
        echo "Kernel infoma: $KER"
        echo
        shift
	;;
	"-m" | "--mem")
        MRY=`free -m | grep '^Mem:' | tr -s ' ' | cut -d ' ' -f 4`
        echo "RAM infoma: $MRY"
        echo
        shift
        ;;
	"-s" | "--sys")
        SYS=`cat /etc/os-release | grep "PRETTY" | cut -c 13-50`
        echo "system infoma: $SYS"
        echo
        shift
        ;;
	"-ip" | "--ipadr")
        IPADDR=`hostname -I | cut -d ' ' -f 1`
        echo "IP infoma: $IPADDR"
        echo
        shift
	;;
	esac
done
