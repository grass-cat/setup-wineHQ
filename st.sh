#!/usr/bin/env bash

# shellcheck disable=SC2140,SC2086

# COLOR VARIABLES

RED="\e[31m"

ENDCOLOR="\e[0m"

# SETUP

curl -L https://raw.githubusercontent.com/grass-cat/setup/main/00.sh | bash

curl -L https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/winestp.sh | bash

xfconf-query -c xfce4-panel -p /panels/panel-1/size -t int -s 28

ls /usr/share/themes/
xfconf-query -c xfwm4 -p /general/theme -s "Default-xhdpi"

xfconf-query -c xsettings -p /Gtk/FontConfig/TitleFontSize -s "12"

#PEAZIP INSTALL
wget https://github.com/peazip/PeaZip/releases/download/9.1.0/peazip_9.1.0.LINUX.GTK2-1_amd64.deb

sudo apt install ./peazip_9.1.0.LINUX.GTK2-1_amd64.deb

# DEL DEB
cd
rm peazip_9.1.0.LINUX.GTK2-1_amd64.deb

#CLEAN
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt update

echo -e "\n\n${RED}<-- DONE -->${ENDCOLOR}"
