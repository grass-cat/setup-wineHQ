#!/usr/bin/env bash

while true; do
    echo "SETUP UBUNTU & WINE:"
    echo "1. SETUP UBUNTU"
    echo "2. SETUP & UPDATE WINE"
    echo "3. UPDATE WINE"

    read -p "CHOICE NUMBER (1 - 3): " option

    case $option in
        1)
            echo "Running Option 1..."
            curl -sSL https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/ub.sh | bash
            break
            ;;
        2)
            echo "Running Option 2..."
            curl -sSL https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wi.sh | bash
            break
            ;;
        3)
            echo "Running Option 3..."
            curl -sSL https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wu.sh | bash
            break
            ;;
        *)
            echo "INVALID CHOICE. Please select a number between 1 and 3."
            ;;
    esac
done
