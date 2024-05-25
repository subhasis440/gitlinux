#!/bin/bash

#check root user
if [ $UID -eq 0 ]
then	
	echo "you can do prceed for isntallation"
else	
	echo "please be a root user to continue"
fi

#Check internet connection

ping -c 1 172.16.20.143 &> /dev/null
PG=$?
if [ $PG -eq 0 ]
then 
	echo "conect to internet" 
else 
	echo "no internet"
fi

#loop script

for i in git tree
do
	$i --version &> /dev/null
	if [ $? -ne 0 ]
	then 	echo "installing $i"
		apt install $i -y &> /dev/null
		echo "$i installed"
			if [ $? -ne 0 ]
			then 
				echo "please install mannually"
			else
				echo "Installtion of $i done"
			fi
	else 
		echo "$i already install proced furether" 
	fi
done
