#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

yes | sudo apt install filezilla

#Coogle Earth
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb -O ~/Downloads/deb/google-earth.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-earth.deb

#Inkscape 
yes | sudo add-apt-repository ppa:inkscape.dev/stable
yes | sudo apt update
yes | sudo apt install inkscape

#Neovim
yes | sudo add-apt-repository ppa:neovim-ppa/stable
yes | sudo apt update
yes | sudo apt install nvim

#Go
yes | sudo add-apt-repository ppa:longsleep/golang-backports
yes | sudo apt update
yes | sudo apt install golang-go

#OBS Studio
yes | sudo add-apt-repository ppa:obsproject/obs-studio
yes | sudo apt update
yes | sudo apt install obs-studio

#yt-dlp
yes | sudo apt install aria2 ffmpeg
yes | sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

#Flatpak
yes | sudo apt install flatpak
yes | flatpak update

#Creativity
yes | flatpak install flathub org.blender.Blender
yes | flatpak install flathub org.ardour.Ardour
yes | flatpak install flathub org.kde.krita

#Social
yes | flatpak install flathub com.slack.Slack
yes | flatpak install flathub com.discordapp.Discord

#Game 
yes | flatpak install flathub com.valvesoftware.Steam
yes | flatpak install flathub org.ppsspp.PPSSPP
yes | flatpak install flathub org.citra_emu.citra

