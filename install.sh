#!/bin/bash

sudo make clean install
sudo mkdir -p /usr/share/icons
sudo cp archlogo-full.svg /usr/share/icons/

mkdir -p ~/.config/xfce4
cp -rv xfconf panel terminal ~/.config/xfce4

if [ -e ~/.xinitrc ] ; then
	mv ~/.xinitrc ~/.xinitrc.bak
fi

if [ -e ~/.conkyrc ] ; then
	mv ~/.conkyrc ~/.conkyrc.bak
fi

cp xinitrc ~/.xinitrc
cp conkyrc ~/.conkyrc
