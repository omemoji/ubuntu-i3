# Ubuntu-i3

## About this repository

<img src="https://assets.ubuntu.com/v1/29985a98-ubuntu-logo32.png" width="100px">

The script `install.sh` builds a i3-wm-based desktop environment on Ubuntu Server 22.04.

## How to use

### 1: Get and install Ubuntu Server 22.04

https://ubuntu.com/download/server

### 2: Run `install.sh`

```
git clone https://github.com/omemoji/ubuntu-i3.git
cd ubuntu-i3
sh install.sh
```
### 3: Done!🎉
Ubuntu-i3 doesn't have a display manager and a desktop environment starts with `startx` (it automatically starts by .zprofile.)


## Environment

### Applications
| Categories             | Application        |
| ---------------------- | ------------------ |
| Window manager         | i3                 |
| Launcher               | i3-dmenu-desktop   |
| Input method(Japanese) | Fcitx5 and Mozc    |
| Sound                  | PipeWire           |
| Terminal               | rxvt-unicode       |
| Browser                | Google hrome      |
| Mailer                 | Thunderbird        |
| Editor                 | Visual Studio Code |
| File manager           | Thunar             |
| Image viewer           | Ristoretto         |
| PDF viewer             | Evince             |
| Media player           | VLC                |
| Image editor           | GIMP, Inkscape     |

| Categories   | Application(CUI) |
| ------------ | ---------------- |
| Shell        | zsh              |
| Browser      | w3m              |
| Editor       | Vim, Neovim      |
| File Manager | Ranger           |

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
