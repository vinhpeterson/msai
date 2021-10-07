#!/bin/bash
# updates computer
sudo apt-get update && sudo apt-get upgrade-y
sudo apt update
sudo apt upgrade
sudo apt autoremove
#installs java16
sudo dpkg -i jdk-16.0.1_linux-x64_bin.deb
# creates server folder then goes into directory
mkdir mc-server
cd mc-server
# installs git if not already installed. then clones paper.jar
sudo apt-get install git -y
wget https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/308/downloads/paper-1.17.1-308.jar
# running the jar file
java -jar paper-1.17.1-308.jar nogui
# that will generate your needed files, but you will need to change eula.txt. now you can clone your own eula.txt and replace the old one with the new one.
cd
sudo rm -r eula.txt
git clone https://github.com/vinhpeterson/msai/presetup-eula.txt
# the server should be setup and ready to run
echo"Your server is setup! Run the command sudo java -jar paper-1.17.1-308.jar nogui to get your server running or run the mc-startup.sh"
