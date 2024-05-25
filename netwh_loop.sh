#!/bin/bash

TAB=1

echo -n  "+ enter num to create table: "
read NUM

if [[ $NUM = [[:digit:]] ]]; then
    clear
    echo "================="
    echo "table for $NUM"
    echo "================="
    echo
    while [ $TAB -le 10 ]; do
        RESULT=$((NUM * TAB))
        echo "$NUM*$TAB=$RESULT"
        ((TAB++))
    done
else
    echo "enter num to see result"
fi
