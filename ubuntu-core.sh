#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#---Commands---
#essential
yes | sudo apt install --no-install-recommends zsh build-essential python3 python3-pip python3-dev ranger curl wget git vim tlp powertop w3m w3m-img htop rclone 

#network
yes | sudo apt install --no-install-recommends network-manager openssh-server proxychains openssl ca-certificates tor

#apt
yes | sudo apt install --no-install-recommends software-properties-common apt-transport-https ppa-purge

#others
yes | sudo apt install --no-install-recommends neofetch

#kernel
yes | sudo apt install --install-recommends linux-generic-hwe-22.04

yes | sudo apt purge needrestart