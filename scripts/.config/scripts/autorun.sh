#!/bin/sh

sleep 1s;

#jellyfin client mpv
setsid jellyfin-mpv-shim 2>&1 > /dev/null || notify-send 'jellyfin-mpv-shim fail'&

#polkit
setsid /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 2>&1 > /dev/null &


setsid play-with-mpv 2>&1 > /dev/null &

setsid SVPmanager 2>&1 > dev/null &

notify-send -t 30000 'autorun done'
