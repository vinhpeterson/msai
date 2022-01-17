#!/bin/bash
#goes to home directory
cd
#creates and goes into directory
mkdir ~/mc-server
cd mc-server
#updates computer
sudo apt-get update && sudo apt-get upgrade-y
sudo apt update
sudo apt upgrade
sudo apt autoremove
#installs java17
sudo apt-get install openjdk-17-jdk -y
#installs git if not already installed. then clones paper.jar
sudo apt-get install git -y
wget https://papermc.io/api/v2/projects/paper/versions/1.18.1/builds/155/downloads/paper-1.18.1-155.jar
#runs server jar file and replaces eula
java -jar paper-1.18.1-155.jar nogui
sudo rm -r eula.txt
sudo git clone https://github.com/vinhpeterson/presetup-eula.git
cd presetup-eula
sudo mv eula.txt ~/mc-server
cd
cd mc-server
sudo rm -r presetup-eula
# the server should be setup and ready to run
GREEN='\033[0;32m'
printf "${GREEN}"
echo "Your server is setup! Run the command sudo java -jar paper-1.18.1-155.jar nogui to get your server running or run the mc-startup.sh"
