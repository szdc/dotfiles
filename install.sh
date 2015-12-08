#!/bin/bash

# PRE-INSTALL UPDATE
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# GENERAL
sudo apt-get install -y \
  git feh arandr thunar rofi compton i3blocks

DIR=$(dirname $(readlink -f $0))
TMP="$DIR"/tmp
mkdir "$TMP"

# FONTS
# Create fonts folder
mkdir ~/.fonts

## Font Awesome
FONTAWESOME="$TMP"/FontAwesome
wget -O "$FONTAWESOME".zip https://github.com/FortAwesome/Font-Awesome/archive/v4.5.0.zip
unzip "$FONTAWESOME".zip -d "$TMP"
mv "$TMP"/Font-Awesome-4.5.0/*.ttf ~/.fonts/

## Yosemite San Francisco
YOSEMITE="$TMP"/YosemiteSanFrancisco
wget -O "$YOSEMITE".zip https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
unzip "$YOSEMITE".zip -d "$TMP"
mv "$TMP"/YosemiteSanFranciscoFont-master/*.ttf ~/.fonts/

# THEMES
## GTK Theme & Icon Theme
sudo add-apt-repository -y ppa:ravefinity-project/ppa
sudo apt-get update
sudo apt-get install -y ambiance-flat-colors radiance-flat-colors vivacious-colors

# FILES
DIR=$(dirname $(readlink -f $0))
cp -R "$DIR"/.config/* ~/.config/
cp -R "$DIR"/.i3/* ~/.i3/
cp "$DIR"/.gtkrc-2.0 ~/.gtkrc-2.0

# CLEANUP
rm -rf "$TMP"
