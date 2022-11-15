#!/bin/bash
mkdir ~/GitHub
mkdir ~/Downloads
mkdir ~/Downloads/deb
mkdir ~/Documents
mkdir ~/workspace
mkdir ~/.fonts
cp -r MesloLGS_NF ~/.fonts
mkdir ~/Pictures
mkdir ~/Pictures/screenshot
mkdir ~/Pictures/wallpaper 
for i in wallpaper/*; do
    cp "$i" ~/Pictures/"$i"
done
