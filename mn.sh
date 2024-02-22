#!/bin/bash

while true; do
    echo "SETUP UBUNTU & WINE:"
    echo "1. SETUP UBUNTU ONLY"
    echo "2. SETUP UBUNTU & WINE"
    echo "3. SETUP UBUNTU & UPDATE WINE"

    read -p "CHOICE NUMBER (1 - 3): " option

    case $option in
        1)
            echo "Running Option 1..."
            curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/ub.sh | bash
            break
            ;;
        2)
            echo "Running Option 2..."
            curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wi.sh | bash
            break
            ;;
        3)
            echo "Running Option 3..."
            curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wu.sh | bash
            break
            ;;
        *)
            echo "INVALID CHOICE. Please select a number between 1 and 3."
            ;;
    esac
done
