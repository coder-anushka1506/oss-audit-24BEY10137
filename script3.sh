#!/bin/bash

# Script 3: Directory Checker
# Author: Anushka

DIR_LIST=("/home" "/tmp" "/usr" "/var")

echo "Directory Analysis Report"
echo "--------------------------"

for DIR in "${DIR_LIST[@]}"
do
    if [ -d "$DIR" ]; then
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        PERM=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        echo "$DIR -> Size: $SIZE | Permissions: $PERM"
    else
        echo "$DIR does not exist"
    fi
done

echo "--------------------------"