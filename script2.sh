#!/bin/bash

# Script 2: Python Package Checker
# Author: Anushka

PACKAGE="python3"

echo "Checking if Python is installed..."
echo "----------------------------------"

if command -v python3 &> /dev/null
then
    echo "Python is installed on this system."
    python3 --version
else
    echo "Python is NOT installed."
fi

echo "----------------------------------"

case $PACKAGE in
    python3)
        echo "Python: A powerful and easy-to-learn programming language used worldwide."
        ;;
    *)
        echo "Unknown package"
        ;;
esac