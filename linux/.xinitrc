#!/bin/sh
# Script to configure X, start common apps, and start xmonad.

export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/.local/bin:$HOME/bin:$HOME/bin-helper:$GOPATH/bin"
export VISUAL=nvim
export EDITOR="$VISUAL"

xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xdefaults &

# screenlayout and wallpaper
autorandr --change
feh --bg-center ~/nextCloud/Photos/0000\ Stock/meghan-markle-suits.jpg --image-bg "#002b36" &

# teams &

urxvtd --quiet --opendisplay --fork &

~/bin-helper/curl-contains &

exec xmonad
