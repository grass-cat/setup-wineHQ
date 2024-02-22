#!/bin/bash

# Download
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/mn.sh -O mn

# PERMISSION
chmod +x mn

gnome-terminal -- bash -c "bash ./mn; exec bash"
exit
