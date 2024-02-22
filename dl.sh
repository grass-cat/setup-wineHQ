#!/bin/bash

# Download
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/mn.sh -O mn

# PERMISSION
chmod +x mn

# 
x-terminal-emulator -e "bash ./mn"
exit

#
clear
######s
echo "TYPE \"./mn\" TO RUN SCRIPT AGAIN."
