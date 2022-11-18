#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#---Commands---
#essential
yes | sudo apt install --no-install-recommends zsh build-essential python3 python3-pip curl wget git vim tlp powertop htop rclone sqlite3

#network
yes | sudo apt install --no-install-recommends network-manager openssh-server proxychains openssl ca-certificates tor

#bluetooth
yes | sudo apt install --no-install-recommends blueman

#apt
yes | sudo apt install --no-install-recommends software-properties-common apt-transport-https ppa-purge

#apps
yes | sudo apt install --no-install-recommends neofetch 

#ranger
yes | sudo apt install ranger python3 python3-dev libx11-dev libxext-dev python3-distutil ffmpegthumbnailer atool
yes | sudo pip3 install ueberzug 

#w3m
yes | sudo apt install w3m libsixel-bin w3m-img- 

yes | sudo apt purge needrestart