#!/bin/bash
# updates computer
sudo apt-get update && sudo apt-get upgrade-y
sudo apt update
sudo apt upgrade
sudo apt autoremove
#installs java16
wget --header 'Host: uc544b791971c3f1206e7b6648c7.dl.dropboxusercontent.com' --user-agent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0' --header 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' --header 'Accept-Language: en-US,en;q=0.5' --referer 'https://www.dropbox.com/' --header 'Upgrade-Insecure-Requests: 1' --header 'Sec-Fetch-Dest: iframe' --header 'Sec-Fetch-Mode: navigate' --header 'Sec-Fetch-Site: cross-site' 'https://uc544b791971c3f1206e7b6648c7.dl.dropboxusercontent.com/cd/0/get/BXlRSC5J-rCJ_oPBgIQyhDxzTjDbZO4kSmF_zNA2cJoHSdW060Or53j6A2thalWV6e8AFhyYiz2IkcoesWgCmqR43SfatCKwnbmeunXM3hZYlyF5fytm-8kEy7nzfHHXeWsg7zpp2XECNbPWppxHw6ZX/file?_download_id=83652988090495369539847751550743752620537824045863268978539287&_notify_domain=www.dropbox.com&dl=1' --output-document 'jdk-16.0.1_linux-x64_bin.deb'
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
git clone https://github.com/vinhpeterson/msai/blob/main/presetup-eula.txt
# the server should be setup and ready to run
echo"Your server is setup! Run the command sudo java -jar paper-1.17.1-308.jar nogui to get your server running or run the mc-startup.sh"
