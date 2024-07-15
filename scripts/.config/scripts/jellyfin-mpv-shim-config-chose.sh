#!/usr/bin/env sh
set -e

cd "$HOME/.config/jellyfin-mpv-shim"
cp "$(fd -e json . cred | fzf)" cred.json
