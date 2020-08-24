#!/bin/bash

#ssh-keygen -t rsa -b 4096 -C "$USER@sautner.me"

sudu apt update 
sudu apt upgrade -y
sudu apt dist-upgrade -y
sudu apt autoremove -y
sudu apt clean

sudo apt-get remove android-sdk
sudo apt-get autoremove android-sdk
sudo apt-get purge android-sdk
sudo apt-get autoremove --purge android-sdk

sudo apt install -y preload git net-tools openjdk-8-jdk android-sdk snapd
sudo cp ./environment /etc/environment
source /etc/environment
sudo chown -R $USER $ANDROID_HOME 
mkdir $ANDROID_HOME/cmdline-tools
scp ben@sautner.me:~/cmdline-tools.zip $ANDROID_HOME/cmdline-tools
cd $ANDROID_HOME/cmdline-tools
unzip cmdline-tools.zip
rm cmdline-tools.zip
sudo snap install android-studio --classic


wget -q -O - https://www.charlesproxy.com/packages/apt/PublicKey | sudo apt-key add -
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1AD28806
sudo apt-get update
sudo apt-get install charles-proxy -y

sudo reboot
