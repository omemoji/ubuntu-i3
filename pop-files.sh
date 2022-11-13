#!/bin/bash
mkdir ~/GitHub
mkdir ~/workspace
mkdir ~/Downloads/deb
mkdir ~/googledrive
mkdir ~/.fonts
mkdir ~/Pictures/Artworks
mkdir ~/Pictures/screenshot
mkdir ~/Pictures/wallpaper 
for i in wallpaper/*; do
    cp "$i" ~/Pictures/"$i"
done
