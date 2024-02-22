#!/bin/bash

echo "SETUP UBUNTU & WINE:"
echo "1. SETUP UBUNTU ONLY"
echo "2. SETUP UBUNTU & WINE"
echo "3. SETUP UBUNTU & UPDATE WINE"

read -p "CHOICE NUMBER (1 - 3): " option

if [ $option -eq 1 ]; then
    curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/ub.sh | source /dev/stdin
    echo "SETUP UBUNTU"
elif [ $option -eq 2 ]; then
    curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wi.sh | source /dev/stdin
    echo "SETUP UBUNTU & WINE"
elif [ $option -eq 3 ]; then
    curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wu.sh | source /dev/stdin
    echo "SETUP UBUNTU & UPDATE WINE"
else
    echo "INVALID."
fi
