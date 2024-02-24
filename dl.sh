#!/usr/bin/env bash

# Download
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/mn.sh -O mn

# PERMISSION
chmod +x mn

# 
x-terminal-emulator -e "bash ./mn"

# FISH
sudo apt update
sudo apt-get install -y fish

#
echo "exec fish" >> ~/.bashrc
source ~/.bashrc

#
echo -e "\e[31mDone\e[0m"
exec fish

clear
######
echo -e "\e[33mTYPE \"./mn\" TO RUN SCRIPT AGAIN.\e[0m"
######
exit
