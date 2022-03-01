#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

#essential
yes | sudo apt install xserver-xorg
yes | sudo apt install --no-install-recommends xinit network-manager-gnome evince 
yes | sudo apt install i3 i3status dmenu \
xarchiver thunar gvfs autofs ranger gvfs-backends atool thunar-archive-plugin \
zsh python3-pip build-essential curl wget git nano vim python3 \
fcitx fcitx-mozc fonts-noto font-manager \
network-manager blueman openssh-server \
software-properties-common apt-transport-https ppa-purge \
pulseaudio pavucontrol alsa-utils \
feh vlc ristretto screengrab 

#apps
yes | sudo apt install htop rclone tlp w3m w3m-img compton picom neofetch aria2 man httrack ffmpeg arandr \
torbrowser-launcher proxychains tor filezilla \
ardour blender /
libarchive-tools xorriso p7zip-full gzip whois \
qemu-system libvirt-clients libvirt-daemon-system timeshift

#Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/deb/google-chrome.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-chrome.deb

#VSCode
yes | curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/ms-vscode-keyring.gpg
yes | echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ms-vscode-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
yes | sudo apt update
yes | sudo apt install code

#Alacritty
yes | sudo add-apt-repository ppa:aslatter/ppa
yes | sudo apt update
yes | sudo apt install alacritty

#google-earth
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb -O ~/Downloads/deb/google-earth.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-earth.deb

#teams
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.4855_amd64.deb -O ~/Downloads/deb/teams.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/teams.deb

#Gimp
yes | sudo add-apt-repository ppa:ubuntuhandbook1/gimp
yes | sudo apt update
yes | sudo apt install gimp gimp-gmic

#Inkscape 
yes | sudo add-apt-repository ppa:inkscape.dev/stable
yes | sudo apt update
yes | sudo apt install inkscape

#Krita
yes | sudo add-apt-repository ppa:kritalime/ppa
yes | sudo apt update
yes | sudo apt install krita

#yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

yes | sudo apt update 
yes | sudo apt upgrade