#!/bin/bash
yes | sudo apt update
yes | sudo apt upgrade

sudo cp keyboard /etc/default/keyboard
sudo systemctl restart console-setup
sudo cp sources.list /etc/apt/sources.list