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
#wget -O fontawesome.zip https://github.com/FortAwesome/Font-Awesome/archive/v4.5.0.zip
#unzip fontawesome.zip
#rm fontawesome.zip
#cp Font-Awesome-4.5.0/fonts/fontawesome-webfont.ttf ~/.fonts/
