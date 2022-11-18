#!/bin/bash

#Use Pipewire
yes | sudo apt install pipewire \
libspa-0.2-bluetooth libspa-0.2-jack \
pipewire-audio-client-libraries \

#LDAC Bluetooth ABR library (shared library)
#LDAC Bluetooth encoder library (shared library)
yes | sudo apt install libldacbt-{abr,enc}2

yes | sudo apt install wireplumber pipewire-media-session-

systemctl --user --now enable wireplumber.service

yes | sudo apt install --no-install-recommends pavucontrol