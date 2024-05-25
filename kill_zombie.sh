#!/bin/bash

# List zombie processes
zombie_pids=$(ps aux | awk '$8 ~ /^[Zz]/' | awk '{print $2}')

# Check if there are any zombie processes
if [ -z "$zombie_pids" ]; then
    echo "No zombie processes found."
    exit 0
fi

# Display the number of zombie processes
echo "Found $(echo "$zombie_pids" | wc -w) zombie process(es)."

# Ask for confirmation
read -p "Do you want to terminate these zombie processes? (y/n): " choice

if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
    # Kill the parent processes to remove zombies
    for pid in $zombie_pids; do
        parent_pid=$(ps -o ppid= -p "$pid")
        sudo kill -9 "$parent_pid"
    done
    echo "Zombie processes terminated."
else
    echo "No action taken."
fi
