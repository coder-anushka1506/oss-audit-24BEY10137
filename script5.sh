#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Anushka

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What would you build and share? " BUILD

DATE=$(date)
FILE="my_manifesto.txt"

echo "" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "----------------------" >> $FILE
echo "Date: $DATE" >> $FILE
echo "" >> $FILE
echo "I use $TOOL regularly." >> $FILE
echo "For me, freedom means $FREEDOM." >> $FILE
echo "I would like to build $BUILD and share it with everyone." >> $FILE

echo ""
echo "Manifesto saved in $FILE"
cat $FILE