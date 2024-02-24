#!/bin/bash

cd
wine --version

# SET DPI
echo -e "REGEDIT4\n\n[HKEY_CURRENT_USER\\Control Panel\\Desktop]\n\"LogPixels\"=hex:60,00,00,00" > dpi.reg
wine regedit dpi.reg

# DEL
cd
rm dpi.reg

# INSTALL WINETRICKS
sudo apt install -y winetricks

winetricks -q -v dxvk vcrun2008 vcrun2010 vcrun2019 wmp10 d3dx9

winetricks win10

# ADD DRIVE
cd .wine
ln -s "/home/user" dosdevices/d:

# ADD SHORTCUT
# EXPLORER
echo -e "[Desktop Entry]\nName=Explorer\nExec=env wine explorer.exe\nType=Application\nStartupNotify=true\nPath=/home/user/.wine/drive_c:/windows\nStartupWMClass=explorer.exe\nIcon=1CD8_rundll32.0\nComment=\nTerminal=false" > ~/Desktop/Explorer.desktop

# EXPLORER JP
echo -e "[Desktop Entry]\nName=Explorer JP\nExec=env LANG=\"ja_JP.UTF8\" wine explorer.exe\nType=Application\nStartupNotify=true\nPath=/home/user/.wine/drive_c:/windows\nStartupWMClass=explorer.exe\nIcon=1CD8_rundll32.0\nComment=\nTerminal=false" > ~/Desktop/Explorer_JP.desktop

# CHROME
echo -e "[Desktop Entry]\nName=Chrome\nExec=/usr/bin/google-chrome-stable\nType=Application\nIcon=google-chrome\nCategories=Network;WebBrowser;\nTerminal=false\nStartupNotify=true" > ~/Desktop/chrome.desktop

# PERMISSION 
chmod +x ~/Desktop/Explorer.desktop
chmod +x ~/Desktop/Explorer_JP.desktop
chmod +x ~/Desktop/chrome.desktop

#clear
echo -e "\e[31mDone\e[0m"
