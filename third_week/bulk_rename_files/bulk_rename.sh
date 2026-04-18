#!/bin/bash

count=0

for file in *.txt
do
    if [ -f "$file" ]; then
        mv "$file" "${file%.txt}.bak"
        ((count++))
    fi
done

echo "$count files renamed successfully"
