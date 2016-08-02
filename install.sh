#!/bin/bash

sudo make clean install
sudo mkdir -p /usr/share/icons
sudo cp archlogo-full.svg /usr/share/icons/

mkdir -p ~/.config/xfce4
cp -rv xfconf panel terminal ~/.config/xfce4

if [ -e ~/.xinitrc ] ; then
	mv ~/.xinitrc ~/.xinitrc.bak
fi

cp xinitrc ~/.xinitrc
