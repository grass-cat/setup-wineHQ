#!/usr/bin/env bash

# shellcheck disable=SC2140,SC2086

# COLOR VARIABLES

RED="\e[31m"

ENDCOLOR="\e[0m"

echo -e "\n\n${RED}<-- SETUP WINE -->${ENDCOLOR}"

cd
wine --version

# SET DPI 150

echo -e "REGEDIT4\n\n[HKEY_CURRENT_USER\\Control Panel\\Desktop]\n\"LogPixels\"=dword:00000096" > dpi.reg

wine regedit dpi.reg

# INSTALL WINETRICKS

sudo apt install -y winetricks

winetricks -q -v dxvk vcrun2008 vcrun2010 vcrun2012 vcrun2019 wmp9 directx9

winetricks win10 vd=off unattended csmt=off glsl=disabled gsm=1 psm=0 vsm=1 multisampling=disabled

# ADD DRIVE

cd .wine
ln -s "/home/user" dosdevices/d:

# ADD LOCAL JP

echo -e "\n\n${RED}<-- Add Local JP -->${ENDCOLOR}"

sudo apt-get install language-pack-ja -y

sudo apt update

echo -e "\n\n${RED}<-- Add Exploler Shortcut -->${ENDCOLOR}"

# ADD SHORTCUT
echo -e "[Desktop Entry]\n\nName=Explorer\n\nExec=env wine explorer.exe\n\nType=Application\n\nStartupNotify=true\n\nPath=/home/user/.wine/drive_c:/windows\n\nStartupWMClass=explorer.exe" > ~/Desktop/Explorer_EN.desktop

echo -e "[Desktop Entry]\n\nName=Explorer JP\n\nExec=env LANG=\"ja_JP.UTF8\" wine explorer.exe\n\nType=Application\n\nStartupNotify=true\n\nPath=/home/user/.wine/drive_c:/windows\n\nStartupWMClass=explorer.exe" > ~/Desktop/Explorer_JP.desktop

# PERMISSION 
chmod +x ~/Desktop/Explorer_EN.desktop
chmod +x ~/Desktop/Explorer_JP.desktop

# DEL
cd
rm dpi.reg

echo -e "\n\n${RED}<-- INSTALL WINE FINISH -->${ENDCOLOR}"
