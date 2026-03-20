#!/bin/bash

# Script 4: Log Analyzer
# Author: Anushka

FILE="sample.log"
KEYWORD="error"
COUNT=0

# Create sample log file (so it works on Windows also)
echo "error: something failed" > $FILE
echo "info: system running" >> $FILE
echo "warning: low memory" >> $FILE
echo "error: file not found" >> $FILE

echo "Analyzing log file..."
echo "----------------------"

while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$FILE"

echo "Keyword '$KEYWORD' found $COUNT times."

echo "Last matching lines:"
grep -i "$KEYWORD" "$FILE" | tail -2