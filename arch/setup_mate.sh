#!/usr/bin/env bash

DIR=`dirname $0`

#Mate themes
mkdir -p $HOME/.themes
dldir=`mktemp -d` || exit 1

pushd "$dldir"
  curl "http://gnome-look.org/CONTENT/content-files/154296-FlatStudio-1.03.tar.gz" | \
  tar -xz -C $HOME/.themes/

  curl -L "https://launchpad.net/~satyajit-happy/+archive/themes/+files/elementary-dark-theme_2012.01.30-0~satya164~oneiric.tar.gz" | \
  tar -xz -C $HOME/.themes/ elementary-dark-theme-2012.01.30/elementary\ Dark --strip-components=1
popd

#Arch icon for menu button
#sudo cp $DIR/arch-icon/start-here.png /usr/share/icons/Adwaita/24x24/places/start-here.png
#sudo cp $DIR/arch-icon/start-here.svg /usr/share/icons/Adwaita/scalable/places/start-here.svg
sudo cp $DIR/arch-icon/start-here.svg /usr/share/mate-menu/icons/mate-logo.svg

#Mate panel
sudo cp $DIR/mate-panel/my.layout /usr/share/mate-panel/layouts/
mate-panel --layout my --reset
