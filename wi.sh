#!/usr/bin/env bash
# shellcheck disable=SC2140,SC2086

# INSTALL WINE
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings

sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -

sudo apt update
sudo apt install wine32 -y

# WINE UPDATE
curl -sSL https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wu.sh | bash
