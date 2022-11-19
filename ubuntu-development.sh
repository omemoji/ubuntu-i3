#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#---Commands---
#commands 
yes | sudo apt install sqlite3

#virtual machine
yes | sudo apt install qemu-system libvirt-clients libvirt-daemon-system

#Neovim
yes | sudo add-apt-repository ppa:neovim-ppa/stable
yes | sudo apt update
yes | sudo apt install nvim

#Go
yes | sudo add-apt-repository ppa:longsleep/golang-backports
yes | sudo apt update
yes | sudo apt install golang-go

#Java
yes | sudo apt install openjdk-19-jdk

#Nodejs
yes | sudo apt install nodejs npm
yes | sudo npm install n -g
yes | sudo n lts
yes | sudo apt purge nodejs npm

#yt-dlp
yes | sudo apt install aria2 ffmpeg
yes | sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp