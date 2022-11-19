#!/bin/bash
#Alacritty
yes | sudo add-apt-repository ppa:aslatter/ppa
yes | sudo apt update
yes | sudo apt install alacritty

#Coogle Earth
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb -O ~/Downloads/deb/google-earth.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-earth.deb

#OBS Studio
yes | sudo add-apt-repository ppa:obsproject/obs-studio
yes | sudo apt update
yes | sudo apt install obs-studio
