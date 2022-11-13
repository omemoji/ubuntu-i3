#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#essential
yes | sudo apt install xserver-xorg 
yes | sudo apt install --no-install-recommends xinit network-manager-gnome evince 
yes | sudo apt install i3 i3status dmenu \
xarchiver thunar gvfs autofs ranger gvfs-backends atool thunar-archive-plugin \
zsh python3-pip build-essential curl wget git vim python3 \
fcitx5 fcitx5-mozc fonts-noto-cjk fonts-noto-cjk-extra font-manager \
network-manager blueman openssh-server \
software-properties-common apt-transport-https ppa-purge \
feh vlc ristretto screengrab light \
flatpak