#!/bin/sh
#fixes GTK theme

gsettings set org.gnome.desktop.interface icon-theme Papirus-Dark
gsettings set org.gnome.desktop.interface gtk-theme Pop-dark
export GTK_THEME=Pop-dark
