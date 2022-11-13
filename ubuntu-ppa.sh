#!/bin/bash
#Alacritty
yes | sudo add-apt-repository ppa:aslatter/ppa
yes | sudo apt update
yes | sudo apt install alacritty

#GIMP
yes | sudo add-apt-repository ppa:savoury1/gimp
yes | sudo apt update
yes | sudo apt install gimp

#Inkscape 
yes | sudo add-apt-repository ppa:inkscape.dev/stable
yes | sudo apt update
yes | sudo apt install inkscape