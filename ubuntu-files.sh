#!/bin/bash
mkdir ~/GitHub
mkdir ~/Downloads
mkdir ~/Downloads/deb
mkdir ~/Documents
mkdir ~/workspace
mkdir ~/.fonts
mkdir ~/Pictures
mkdir ~/Pictures/screenshot
mkdir ~/Pictures/wallpaper 
for i in wallpaper/*; do
    cp "$i" ~/Pictures/"$i"
done
