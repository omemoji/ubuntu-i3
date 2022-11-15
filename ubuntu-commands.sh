#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#essential
yes | sudo apt install zsh build-essential python3 python3-pip curl wget git vim tlp powertop htop rclone ranger
#network
yes | sudo apt install --no-install-recommends network-manager blueman openssh-server proxychains tor 
#apt
yes | sudo apt install --no-install-recommends software-properties-common apt-transport-https ppa-purge
#apps
yes | sudo apt install --no-install-recommends neofetch 

#yt-dlp
yes | sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

yes | sudo apt purge needrestart