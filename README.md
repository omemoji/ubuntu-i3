# dotfiles
## About this dotfiles
This dotfiles add ubuntu-server a desktop environment on i3 wm.

## Get Ubuntu Server 22.04
https://ubuntu.com/download/server

### Apps installed for example
- terminal: rxvt-unicode
- browser: Google Chrome, w3m(CUI)
- editor: Visual Studio Code
- file manager: Thunar, Ranger(CUI)
- image viewer: Ristretto
- PDF viewer: evince
- media player: VLC
- image editor: GIMP, Inkscape 
- input method: Fcitx5
- mailer: Thunderbird

And if you like, (for example) you can install apps below manually.
### .deb package
```
#Alacritty
yes | sudo add-apt-repository ppa:aslatter/ppa
yes | sudo apt update
yes | sudo apt install alacritty

#Coogle Earth
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb -O ~/google-earth.deb
yes | sudo apt update
yes | sudo apt install ~/google-earth.deb
rm ~/google-earth.deb

#OBS Studio
yes | sudo add-apt-repository ppa:obsproject/obs-studio
yes | sudo apt update
yes | sudo apt install obs-studio
```
### Development
```
#virtual machine
yes | sudo apt install qemu-system libvirt-clients libvirt-daemon-system

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
```
### Flatpak
```
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
```