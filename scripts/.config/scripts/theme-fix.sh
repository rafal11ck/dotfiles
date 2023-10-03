#!/bin/sh

#export QT_QPA_PLATFORMTHEME=qt6ct
export GTK_THEME=Pop-dark

gsettings set org.gnome.desktop.interface icon-theme Papirus-Dark
gsettings set org.gnome.desktop.interface gtk-theme Pop-dark

notify-send -t 15000 'theme fixed'
