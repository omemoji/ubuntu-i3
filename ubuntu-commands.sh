#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#essential
yes | sudo apt install --no-install-recommends zsh build-essential python3 python3-pip curl wget git vim tlp powertop htop rclone ranger w3m sqlite3
#network
yes | sudo apt install --no-install-recommends network-manager blueman openssh-server proxychains tor 
#apt
yes | sudo apt install --no-install-recommends software-properties-common apt-transport-https ppa-purge
#apps
yes | sudo apt install --no-install-recommends neofetch 

yes | sudo apt purge needrestart