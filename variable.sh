#!/bin/bash

echo "variable"

cur_dir=$(pwd)  # Corrected assignment of current directory to the variable

echo "directory is: $cur_dir"  # Corrected variable expansion

newfile=$(cat > hello.txt)
echo "$newfile"
