#!/usr/bin/env bash
# shellcheck disable=SC2140,SC2086

cd
wine --version

# SET DPI
echo -e "REGEDIT4\n\n[HKEY_CURRENT_USER\\Control Panel\\Desktop]\n\"LogPixels\"=hex:60,00,00,00" > dpi.reg
wine regedit dpi.reg

# DEL
cd
rm dpi.reg

# INSTALL WINETRICKS
sudo apt-get install -y winetricks
sudo apt-get install -y zenity

winetricks --verbose windowscodecs vb6run physx wmp9 xvid d3dx9 quartz ogg
winetricks win7

# ADD DRIVE
cd .wine
ln -s "/home/user" dosdevices/u:
ln -s "/home/user/Downloads" dosdevices/d:

# ADD LC JP
sudo apt-get install language-pack-ja -y
sudo apt update

# EXPLORER
echo -e "[Desktop Entry]\nName=Explorer\nExec=env wine explorer.exe\nType=Application\nStartupNotify=true\nPath=/home/user/.wine/drive_c:/windows\nStartupWMClass=explorer.exe\nIcon=1CD8_rundll32.0\nComment=\nTerminal=false" > ~/Desktop/Explorer.desktop

# EXPLORER JP
echo -e "[Desktop Entry]\nName=Explorer JP\nExec=env LANG=\"ja_JP.UTF8\" wine explorer.exe\nType=Application\nStartupNotify=true\nPath=/home/user/.wine/drive_c:/windows\nStartupWMClass=explorer.exe\nIcon=1CD8_rundll32.0\nComment=\nTerminal=false" > ~/Desktop/Explorer_JP.desktop

# PERMISSION 
chmod +x ~/Desktop/Explorer.desktop
chmod +x ~/Desktop/Explorer_JP.desktop

# Done
clear
echo -e "\e[31mDone\e[0m"
