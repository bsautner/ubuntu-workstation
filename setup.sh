#!/bin/bash

#ssh-keygen -t rsa -b 4096 -C "$USER@sautner.me"

sudu apt update 
sudu apt upgrade -y
sudu apt dist-upgrade -y
sudu apt autoremove -y
sudu apt clean

sudo add-apt-repository ppa:mozillateam/firefox-next

wget -q -O - https://www.charlesproxy.com/packages/apt/PublicKey | sudo apt-key add -


sudo apt install -y preload git net-tools openjdk-8-jdk android-sdk snapd firefox charles-proxy

sudo cp ./environment /etc/environment
source /etc/environment
sudo chown -R $USER $ANDROID_HOME 
mkdir $ANDROID_HOME/cmdline-tools
scp ben@sautner.me:~/cmdline-tools.zip $ANDROID_HOME/cmdline-tools
cd $ANDROID_HOME/cmdline-tools
unzip cmdline-tools.zip
rm cmdline-tools.zip
sudo snap install android-studio --classic


git config --global user.email "$USER@sautner.me"
git config --global user.name "$USER Sautner"


#sudo apt-get remove android-sdk
#sudo apt-get autoremove android-sdk
#sudo apt-get purge android-sdk
#sudo apt-get autoremove --purge android-sdk
