#!/bin/bash

# Read the initial value of i from user input
read -p "Enter the initial value of i: " i

# Display the initial value of i
echo "Initial value of i: $i"

# Postfix increment operator (i++)
echo "Postfix increment (i++):"
echo "i++ is $((i++))"  # Postfix increment: Use the current value of i, then increase it by 1
echo "After postfix increment, i is: $i"  # The value of i is increased after the operation

# Prefix increment operator (++i)
echo "Prefix increment (++i):"
echo "++i is $((++i))"  # Prefix increment: Increase the value of i by 1, then use it
echo "After prefix increment, i is: $i"  # The value of i is already increased before the operation

# Postfix decrement operator (i--)
echo "Postfix decrement (i--):"
echo "i-- is $((i--))"  # Postfix decrement: Use the current value of i, then decrease it by 1
echo "After postfix decrement, i is: $i"  # The value of i is decreased after the operation

# Prefix decrement operator (--i)
echo "Prefix decrement (--i):"
echo "--i is $((--i))"  # Prefix decrement: Decrease the value of i by 1, then use it
echo "After prefix decrement, i is: $i"  # The value of i is already decreased before the operation
