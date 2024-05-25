#!/bin/bash

# Set the duration in seconds (1 minute = 60 seconds)
duration=60
interval=5

# Start timestamp
start_time=$(date +%s)

# Create files with timestamp names
while [[ $(($(date +%s) - start_time)) -lt $duration ]]; do
    current_time=$(date +%Y-%m-%d_%H-%M-%S)
    filename="file_${current_time}.txt"
    touch "$filename"
    echo "Created $filename"
    sleep "$interval"
done

echo "Script completed!"
