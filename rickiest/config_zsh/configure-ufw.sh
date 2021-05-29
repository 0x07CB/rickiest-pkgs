#!/bin/bash
cd ~
mkdir -p ~/ufw-temp/configure-ufw/draft/
cd ~/ufw-temp/configure-ufw/draft/
echo "List of apps ready for ufw configuration:" > configure-ufw.txt
sudo ufw app list >> configure-ufw.txt
echo " " >> configure-ufw.txt
echo "Now ufw have this configuration(u can see ...if ufw are enabled)" >> configure-ufw.txt
sudo ufw status >> configure-ufw.txt 
echo "write now the commands of ufw one by one to configure..."
echo "after just save and close and it's okay if you have not made mistake..."
comment-all-lines configure-ufw.txt --yes
$(cat ~/.editor_config_ufw) configure-ufw.txt
mv configure-ufw.txt configure-script-ufw.sh
sudo bash configure-script-ufw.sh
cd ~
sudo rm -rf ufw-temp
