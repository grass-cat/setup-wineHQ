#!/bin/bash

echo '123456' | sudo -S yourCommand

# NO PASSWORD
echo "user ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo

# LIST
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/mn.sh
cd
sudo chmod +x mn.sh

# Menjalankan skrip mn.sh
sudo ./mn.sh
