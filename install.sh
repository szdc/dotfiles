#!/bin/bash

# basic update
#sudo apt-get -y --force-yes update
#sudo apt-get -y --force-yes upgrade

# install apps
sudo apt-get -y install \
  git feh arandr

mkdir ~/Downloads/dotfiles-installer
cd ~/Downloads/dotfiles-installer

# FONTS
# Create fonts folder
mkdir ~/.fonts

## Font Awesome
wget -O ~/.fonts/fontawesome-webfont.ttf https://github.com/FortAwesome/Font-Awesome/blob/master/fonts/fontawesome-webfont.ttf

## Yosemite San Francisco
wget -O YosemiteSanFrancisco.zip https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
unzip YosemiteSanFrancisco.zip
cd YosemiteSanFranciscoFont-master
mv *.ttf ~/.fonts/

rm -rf ~/Downloads/dotfiles-installer
