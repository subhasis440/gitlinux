#!/bin/bash

# Array of words from "The Matrix"
words=("Subh" "Subhasis" "target" "global" "nihilent")

# Function to generate a random password
generate_password() {
    # Select three random words from the array
    word1=${words[$RANDOM % ${#words[@]}]}
    # Concatenate the words with random numbers and special character "."
    password="${word1}.$RANDOM"
    echo "$password"
}

# Generate and print the password
echo "Generated Password: $(generate_password)"
