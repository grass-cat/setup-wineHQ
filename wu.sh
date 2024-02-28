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

# ADD DRIVE
cd .wine
ln -s "/home/user" dosdevices/d:
ln -s /home/user/Downloads/ ~/Desktop/Downloads

# ADD LC JP
sudo apt-get install language-pack-ja -y
sudo apt update
wineboot

# EXPLORER
echo -e "[Desktop Entry]\nName=Explorer\nExec=env wine explorer.exe\nType=Application\nStartupNotify=true\nPath=/home/user/.wine/drive_c:/windows\nStartupWMClass=explorer.exe\nIcon=1CD8_rundll32.0\nComment=\nTerminal=false" > ~/Desktop/Explorer.desktop

# EXPLORER JP
echo -e "[Desktop Entry]\nName=Explorer JP\nExec=env LANG=\"ja_JP.UTF8\" wine explorer.exe\nType=Application\nStartupNotify=true\nPath=/home/user/.wine/drive_c:/windows\nStartupWMClass=explorer.exe\nIcon=1CD8_rundll32.0\nComment=\nTerminal=false" > ~/Desktop/Explorer_JP.desktop

# PERMISSION 
chmod +x ~/Desktop/Explorer.desktop
chmod +x ~/Desktop/Explorer_JP.desktop

# CLEAN
sudo apt-get clean
sudo apt-get autoclean -y
sudo apt-get autoremove -y
sudo apt update

# DONE
clear
echo -e "\e[31mDone\e[0m"
