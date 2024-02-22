#!/bin/bash

echo "SETUP UBUNTU & WINE:"
echo "1. SETUP UBUNTU ONLY"
echo "2. SETUP UBUNTU & WINE"
echo "3. SETUP UBUNTU & UPDATE WINE"

read -p "CHOICE NUMBER (1 - 3): " option

if ! [[ $option =~ ^[1-3]$ ]]; then
    echo "INVALID INPUT. Please enter a number between 1 and 3."
    exit 1
fi

if [ "$option" -eq 1 ]; then
    curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/ub.sh | bash
    echo "SETUP UBUNTU"
elif [ "$option" -eq 2 ]; then
    curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wi.sh | bash
    echo "SETUP UBUNTU & WINE"
elif [ "$option" -eq 3 ]; then
    curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wu.sh | bash
    echo "SETUP UBUNTU & UPDATE WINE"
fi
