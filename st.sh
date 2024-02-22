#!/bin/bash

echo '123456' | sudo -S yourCommand

# NO PASSWORD
sudo su
echo "user ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo

# SCRIPT
curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/dl.sh | bash
