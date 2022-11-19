#!/bin/bash
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

#Coogle Earth
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb -O ~/Downloads/deb/google-earth.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-earth.deb

#OBS Studio
yes | sudo add-apt-repository ppa:obsproject/obs-studio
yes | sudo apt update
yes | sudo apt install obs-studio
