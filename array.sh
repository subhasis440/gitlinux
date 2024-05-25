#!/bin/bash

# Define an array of fruits
fruits=("Apple" "Banana" "Orange" "Grape" "Mango")

# Print the entire array
echo "All fruits: ${fruits[*]}"

# Access individual elements of the array
echo "First fruit: ${fruits[0]}"
echo "Second fruit: ${fruits[1]}"
echo "Third fruit: ${fruits[2]}"

# Add a new fruit to the array
fruits+=("Pineapple")

# Print the updated array
echo "All fruits after adding Pineapple: ${fruits[*]}"
