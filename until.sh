#!/bin/bash

# echo "Rolling a dice until we get a 6:"
# value=0
# until [ $value -eq 7 ]; do
#     value=$(( RANDOM % 12 + 1 ))  # Generating a random number between 1 and 6 (inclusive)
#     echo "Rolled: $value"
# done

# echo "Got a 7! Game over."

echo "Rolling two dices until we get a number in the range 10-16:"
value=0
until [ $value -ge 10 ] && [ $value -le 16 ]; do
    value=$(( $RANDOM % 6 + 1 ))  # Generating a random number between 1 and 6 (inclusive)
    value2=$(( $RANDOM % 6 + 1 ))  # Generating a random number between 1 and 6 (inclusive)
    value=$(( $value + $value2 ))  # Adding the two dices
    echo "Rolled: $value"
done

echo "Got a number in the range 10-16! Game over."
