#!/bin/bash
sudo pacman -Syu
sudo pacman -S ufw
sudo cp editor_config_ufw ~/.editor_config_ufw
sudo cp zshrc ~/.zshrc
sudo cp configure-ufw.sh /usr/bin/configure-ufw
sudo chmod a+x /usr/bin/configure-ufw

