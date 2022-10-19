#!/bin/sh
# Script to configure X, start common apps, and start xmonad.

export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/.local/bin:$HOME/bin:$HOME/bin-helper:$GOPATH/bin:$HOME/.pub-cache/bin"
export VISUAL=nvim
export EDITOR="$VISUAL"

xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xdefaults

# screenlayout and wallpaper
autorandr --change
feh --bg-center ~/nextCloud/Photos/0000\ Stock/tree-house.jpg --image-bg "#0D1611"

if [[ ! -z "$idea" ]]; then
  idea &
fi

dbus-update-activation-environment --all
gnome-keyring-daemon --start --components=secrets
nextcloud &

urxvtd --quiet --opendisplay --fork &

exec xmonad
