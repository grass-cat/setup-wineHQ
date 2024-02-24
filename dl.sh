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
exec fish

#
echo -e "\e[31mDone\e[0m"
clear
######
echo -e "\033[1;32mTYPE \033[0m\033[1;33m./mn \033[0m\033[1;32mTO RUN SCRIPT AGAIN\033[0m"
######
exit
