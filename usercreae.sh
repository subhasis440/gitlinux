#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" 
    exit 1
fi

# Prompt for username
read -p "Enter username: " username

# Check if the username already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Prompt for password
read -sp "Enter password: " password
echo

# Create user with specified password
useradd -m -s /bin/bash "$username"
echo "$username:$password" | chpasswd

echo "User '$username' created with password '$password'"
