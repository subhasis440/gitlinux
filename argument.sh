#!/bin/bash

echo $1
echo $2
name=$1
sur=$2
echo "my name is: $name and surname is : $sur"

read -p "server ping" server_addr
ping -c3 -w5 $server_addr