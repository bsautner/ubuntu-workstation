#!/bin/bash

#ssh-keygen -t rsa -b 4096 -C "$USER@sautner.me"

sudu apt update 
sudu apt upgrade -y
sudu apt dist-upgrade -y
sudu apt autoremove -y
sudu apt clean

sudo add-apt-repository ppa:mozillateam/firefox-next

sudo apt purge gnome-software
 

wget -q -O - https://www.charlesproxy.com/packages/apt/PublicKey | sudo apt-key add -
mkdir ~/scripts
cp ./scripts/* ~/scripts
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/5.0.0-beta/openapi-generator-cli-5.0.0-beta.jar -O ~/scripts/openapi-generator-cli.jar

chmod +x ~/scripts/*

sudo apt install -y preload git net-tools openjdk-8-jdk android-sdk snapd firefox charles-proxy gnome-software docker-compose

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

#docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install  apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chgrp docker /usr/bin/docker
sudo chgrp docker /var/run/docker.sock

#sudo apt-get remove android-sdk
#sudo apt-get autoremove android-sdk
#sudo apt-get purge android-sdk
#sudo apt-get autoremove --purge android-sdk
