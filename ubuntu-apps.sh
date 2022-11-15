#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#window manager
yes | sudo apt install --no-install-recommends xinit network-manager-gnome
yes | sudo apt install xserver-xorg i3 i3status dmenu light picom arandr
#file manager
yes | sudo apt install xarchiver thunar gvfs autofs gvfs-backends thunar-archive-plugin
#font 
yes | sudo apt install fcitx5 fcitx5-mozc fonts-noto-cjk fonts-noto-cjk-extra 
#media
yes | sudo apt install --no-install-recommends feh vlc ristretto screengrab evince

#Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/deb/google-chrome.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-chrome.deb

#VSCode
yes | curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/ms-vscode-keyring.gpg
yes | echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ms-vscode-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
yes | sudo apt update
yes | sudo apt install code

#Alacritty
yes | sudo add-apt-repository ppa:aslatter/ppa
yes | sudo apt update
yes | sudo apt install alacritty

#Inkscape 
yes | sudo add-apt-repository ppa:inkscape.dev/stable
yes | sudo apt update
yes | sudo apt install inkscape