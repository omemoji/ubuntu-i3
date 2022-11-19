#!/bin/bash
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