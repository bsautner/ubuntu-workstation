#!/bin/bash
sudu apt update 
sudu apt upgrade -y
sudu apt dist-upgrade -y
sudu apt autoremove -y
sudu apt clean

sudo apt install -y preload git net-tools

ssh-keygen -t rsa -b 4096 -C "$USER@sautner.me"
sudo reboot
