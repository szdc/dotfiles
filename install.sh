#!/bin/bash

# PRE-INSTALL UPDATE
#sudo apt-get -y --force-yes update
#sudo apt-get -y --force-yes upgrade

# GENERAL
sudo apt-get install -y \
  git feh arandr thunar rofi compton i3blocks

mkdir ~/Downloads/dotfiles-installer

# FONTS
# Create fonts folder
#mkdir ~/.fonts

## Font Awesome
#wget -O ~/.fonts/fontawesome-webfont.ttf https://github.com/FortAwesome/Font-Awesome/blob/master/fonts/fontawesome-webfont.ttf

## Yosemite San Francisco
#wget -O YosemiteSanFrancisco.zip https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
#unzip YosemiteSanFrancisco.zip
#cd YosemiteSanFranciscoFont-master
#mv *.ttf ~/.fonts/

# THEMES
## GTK Theme & Icon Theme
#sudo add-apt-repository -y ppa:ravefinity-project/ppa
#sudo apt-get update
#sudo apt-get install -y ambiance-flat-colors radiance-flat-colors vivacious-colors

# FILES
DIR=$(dirname $(readlink -f $0))
cp -R "$DIR"/.config/* ~/.config/
cp -R "$DIR"/.i3/* ~/.i3/
cp "$DIR"/.gtkrc-2.0 ~/.gtkrc-2.0

# CLEANUP
rm -rf ~/Downloads/dotfiles-installer
