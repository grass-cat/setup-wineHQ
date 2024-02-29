#!/usr/bin/env bash
# shellcheck disable=SC2140,SC2086

# INSTALL WINE
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings

sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

sudo apt update
sudo apt-get install --install-recommends wine32 -y

# WINE UPDATE
curl -sSL https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/wu.sh | bash
