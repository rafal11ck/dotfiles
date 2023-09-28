#!/bin/sh

#polkit
setsid /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 2>&1 > /dev/null || notify-send 'polkit fail'&

#jellyfin client mpv
setsid jellyfin-mpv-shim 2>&1 > /dev/null || notify-send 'jellyfin-mpv-shim fail'&

echo 'autorun done'
