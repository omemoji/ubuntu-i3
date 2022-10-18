# dotfiles
This dotfiles repository is for Ubuntu.
## Ubuntu
`newfiles.sh -> ubuntu-apps.sh -> ubuntu-link.sh`
## git config
```
git config --global user.name "username"
git config --global user.email "email address"
```
## PipeWire
https://zenn.dev/moru3_48/articles/e50c4ef9b0a5c8
```
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream

sudo apt update

# `libfdk-aac2`が見つからない場合は、`libfdk-aac1`をインストールしてください
sudo apt install libfdk-aac2 libldacbt-{abr,enc}2 libopenaptx0

sudo apt install gstreamer1.0-pipewire libpipewire-0.3-{0,dev,modules} libspa-0.2-{bluetooth,dev,jack,modules} pipewire{,-{audio-client-libraries,pulse,bin,locales,tests}}

#WirePlumberを入れる
sudo apt install wireplumber pipewire-media-session-

#X11に対応
sudo apt install libpipewire-module-x11-bell

#PulseAudioを無効化
systemctl --user --now disable  pulseaudio.{socket,service}
systemctl --user mask pulseaudio

#PipeWireを有効化
systemctl --user --now enable pipewire{,-pulse}.{socket,service}

#再起動

```