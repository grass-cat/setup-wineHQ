#!/bin/bash

# Download
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/mn.sh -O mn

# PERMISSION
chmod +x mn

# 
x-terminal-emulator -e "bash ./mn"
clear

######
echo -e "\e[33mTYPE \"./mn\" TO RUN SCRIPT AGAIN.\e[0m"
######
exit
