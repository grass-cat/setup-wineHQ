#!/bin/bash

echo '123456' | sudo -S yourCommand

# NO PASSWORD
sudo su
echo "user ALL=(ALL) NOPASSWD: ALL" | (EDITOR="tee -a" visudo)
##
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/mn.sh
sudo chmod +x mn.sh
##
cd
sudo bash ./mn.sh
