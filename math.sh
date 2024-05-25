#!/bin/bash

echo -n "First number: "
read FN
echo
echo -n "Second number: "
read SN

echo -e "\tPress + to add"
echo -e "\tPress - to subtract"
echo -e "\tPress * to multiply"
echo -e "\tPress / to divide"

echo

echo -n "Enter operation: "
read CAL
echo

# Perform the calculation based on the operation selected
case $CAL in
    "+")
        RES=$(($FN + $SN))
        ;;
    "-")
        RES=$(($FN - $SN))
        ;;
    "*")
        RES=$(($FN * $SN))
        ;;
    "/")
        # Checking if the second number is zero to avoid division by zero
        if [ $SN -eq 0 ]; then
            echo "Error: Division by zero!"
            exit 1
        fi
        RES=$(($FN / $SN))
        ;;
    *)
        echo "Invalid operation"
        exit 1
	;;
esac

echo "The result: $RES"

