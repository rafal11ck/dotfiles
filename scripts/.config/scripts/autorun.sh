#!/bin/sh

#Script auotorunning user apps


#jellyfin client mpv
(jellyfin-mpv-shim > /dev/null 2>&1 || notify-send "$0" 'jellyfin-mpv-shim failed')&

#browseer extension
(play-with-mpv > /dev/null 2>&1 || notify-send "$0" "play-with-mpv failed" )&

# SVP
(SVPmanager > dev/null 2>&1 || notify-send "$0" "SVPmanager failed")


#
