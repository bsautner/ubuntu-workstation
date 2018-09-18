sudo apt-get update
apt-get upgrade
apt-get upgrade
apt-get autoremove
sudo apt-get clean
ssh-keygen -t rsa -b 4096 -C "changeme@example.com"
 
#  ./vpn.sh 
# ./pulse 

   39  ./pulseUi
# apt-get install dconf-gsettings-backend:i386
# apt-get install libproxy1-plugin-webkit:i386
# sudo apt-get install libwebkitgtk-1.0-0:i386
# LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/i386-linux-gnu
#  export LD_LIBRARY_PATH
 
 apt-get install git
 sudo apt update && sudo apt install android-sdk

# vi /etc/environment 
# vi /etc/environment 
# source /etc/environment 
# echo $ANDROID_HOME

find * / | grep pulseUi
dpkg -i ps-pulse-linux-8.2r4.0-b47329-ubuntu-debian-installer.deb
sudo dpkg -i ps-pulse-linux-8.2r4.0-b47329-ubuntu-debian-installer.deb
dpkg -i ps-pulse-linux-9.0r2.0-b819-ubuntu-debian-64-bit-installer.deb 
sudo dpkg -i ps-pulse-linux-9.0r2.0-b819-ubuntu-debian-64-bit-installer.deb 
sudo apt-get install libwebkitgtk-1.0-0
sudo apt-get install libproxy1-plugin-webkit
sudo apt-get install libgnome-keyring0
sudo /usr/local/pulse/PulseClient.sh install_dependency_packages
sudo dpkg -i ps-pulse-linux-5.3r3.0-b1021-ubuntu-debian-64-bit-installer.deb 
  160  ls /usr/local/pulse/
  161  sudo /usr/local/pulse/PulseClient.sh install_dependency_packages
  162  sudo /usr/local/pulse/PulseClient_x86_64.sh install_dependency_packages
  163  /usr/local/pulse/pulseUi 
 
  170  sudo vi /etc/environment 
  171  java -version
  172  source /etc/environment 
  173  echo $JAVA_HOME
  180  echo $ANDROID_HOME
  205  sudo add-apt-repository ppa:webupd8team/java
  206  sudo apt-get update
  207  sudo apt install oracle-java8-installer
  208  sudo apt install oracle-java8-set-default
  209  java -version
  210  sudo vi /etc/default/grub
  211  sudo update-grub
  212  sudo apt-get install preload
  217  sudo apt-get install cpu-checker
  219  sudo kvm-ok
  223  sudo chown ben /dev/kvm
  230  sudo visudo
  231  sudo apt install qemu-kvm
  232  sudo adduser $USER kvm
  234  sudo apt install adb
  235  adb
  236  adb devices
  237  emulator
  238  cd $ANDROID_HOME
  239  ls
  240  cd tools
  244  ln -s emulator64-x86 emulator-x86
  245  ls
  246  emulator -list-avds
  247  ./emulator -list-avds
  248  exit
  250  gnome-system-log
  251  sudo apt-get install gnome-system-log
  252  gnome-system-log
  294  sudo vi /etc/sysctl.conf << set file watches for intellij 
  
  295  sudo sysctl -p --system
  296  wget -q -O - https://www.charlesproxy.com/packages/apt/PublicKey | sudo apt-key add -
  297  sudo sh -c 'echo deb https://www.charlesproxy.com/packages/apt/ charles-proxy main > /etc/apt/sources.list.d/charles.list'
  298  sudo apt-get update
  299  sudo apt-get install charles-proxy
 
  315  sudo keytool -import -alias charles -file ~/bin/charles-ssl-proxying-certificate.pem 
  316  java -version
  317  sudo keytool -import -alias charles -file ~/bin/charles-ssl-proxying-certificate.pem 
  319  keytool -list -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
  320  history
  338  sudo keytool -import -alias charles2 -file ~/bin/charles-ssl-proxying-certificate.pem
keytool -list -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
keytool -list -keystore ./cacerts -storepass changeit
update-ca-certificates -f 
keytool -import -alias charles -file ~/bin/charles-ssl-proxying-certificate.pem 

#this is what fixed charles issues with jdk
keytool -import -alias charles -file ~/bin/charles-ssl-proxying-certificate.pem -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
sudo keytool -import -alias charles -file ~/bin/charles-ssl-proxying-certificate.pem -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
keytool -list -keystore ./cacerts -storepass changeit
keytool -list -keystore /usr/lib/jvm/java-8-oracle/jre/lib/security/cacerts -storepass changeit

ben@ubuntu-ws-01:~$ 
