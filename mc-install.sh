#!/bin/bash
#goes to home directory
cd
#creates and goes into directory
mkdir mc-server
cd mc-server
# updates computer
sudo apt-get update && sudo apt-get upgrade-y
sudo apt update
sudo apt upgrade
sudo apt autoremove
#installs java16
sudo apt-get install openjdk-16-jdk -y
# installs git if not already installed. then clones paper.jar
sudo apt-get install git -y
wget https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/308/downloads/paper-1.17.1-308.jar
# running the jar file
java -jar paper-1.17.1-308.jar nogui
# that will generate your needed files, but you will need to change eula.txt. now you can clone your own eula.txt and replace the old one with the new one.
sudo rm -r eula.txt
sudo git clone https://github.com/vinhpeterson/presetup-eula.git
cd presetup-eula
sudo mv eula.txt ~/mc-server
# the server should be setup and ready to run
echo "Your server is setup! Run the command sudo java -jar paper-1.17.1-308.jar nogui to get your server running or run the mc-startup.sh"
