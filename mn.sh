#!/bin/bash

echo "SETUP MENU:"
echo "1. SETUP UBUNTU ONLY"
echo "2. SETUP UBUNTU & WINE"
echo "3. SETUP UBUNTU & UPDATE WINE"

read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        echo "You chose Option 1"
        curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/ub.sh | bash
        ;;
    2)
        echo "You chose Option 2"
        curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wi.sh | bash
        ;;
    3)
        echo "You chose Option 3"
       curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wu.sh | bash
        ;;
    *)
        echo "Invalid choice. Please select a number between 1 and 3."
        ;;
esac
