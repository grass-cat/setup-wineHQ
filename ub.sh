#!/bin/bash

# SET DPI
xfconf-query -c xsettings -n -t int -p "/Xft/DPI" -s 96

# INSTALL FONTS
sudo apt update
sudo apt-get install language-pack-ja -y
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/Fonts -O FONTSPACK

# INSTALL UNIZP
sudo apt install -y unzip

#EXTRACT FILE
unzip FONTSPACK

mv Fonts .fonts

# DEL
cd
rm FONTSPACK -y

# FIX FONTS
sudo apt-get install --reinstall --purge fontconfig fontconfig-config
sudo apt update

# CHANGE SIZE & THEME 
xfconf-query -c xfce4-panel -p /panels/panel-1/size -t int -s 28

ls /usr/share/themes/
xfconf-query -c xfwm4 -p /general/theme -s "Default-hdpi"

xfconf-query -c xsettings -p /Gtk/FontConfig/TitleFontSize -s "12"

# CHROME UPDATE
sudo apt -y purge google-chrome-stable
sudo apt -y autoremove

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y

# DEL DB
cd
rm google-chrome-stable_current_amd64.deb

# ARCHIVE MANAGER
sudo apt update
sudo apt install -y file-roller unrar p7zip-full p7zip-rar

# PEAZIP
wget https://github.com/peazip/PeaZip/releases/download/9.1.0/peazip_9.1.0.LINUX.GTK2-1_amd64.deb
sudo dpkg -i peazip_9.1.0.LINUX.GTK2-1_amd64.deb

# DEL DEB
cd
rm peazip_9.1.0.LINUX.GTK2-1_amd64.deb

# CLEAN
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

# FISH
sudo apt update
sudo apt install -y fish
# 
echo "exec fish" >> ~/.bashrc
source ~/.bashrc
# 
clear
######
echo -e "\e[31mDone\e[0m"
######
exec fish
