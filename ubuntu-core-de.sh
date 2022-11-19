#!/bin/bash
#---GUI---
#window manager
yes | sudo apt install --no-install-recommends xinit network-manager-gnome light picom arandr blueman rxvt-unicode x11-xserver-utils
yes | sudo apt install xserver-xorg i3 i3status dmenu libgtk-3-0

#file manager
yes | sudo apt install xarchiver thunar gvfs autofs gvfs-backends thunar-archive-plugin ntfs-3g

#font 
yes | sudo apt install fcitx5 fcitx5-mozc fonts-ubuntu fonts-noto-cjk fonts-noto-cjk-extra

#media
yes | sudo apt install --no-install-recommends feh vlc ristretto screengrab evince

#others
yes | sudo apt install gimp gimp-gmic filezilla thunderbird

#Google Chrome(browser)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/deb/google-chrome.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-chrome.deb

#ranger image preview
yes | sudo apt install libx11-dev libxext-dev ffmpegthumbnailer atool
yes | sudo pip3 install ueberzug