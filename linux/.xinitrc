#!/bin/sh
# Script to configure X, start common apps, and start xmonad.

export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/.local/bin:$HOME/bin:$HOME/bin-helper:$GOPATH/bin"
export VISUAL=nvim
export EDITOR="$VISUAL"

xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xdefaults &

# Set wallpaper
feh --bg-scale ~/nextCloud/Photos/0000\ Stock/arch-bridge-clouds-814499.jpg &

urxvtd --quiet --opendisplay --fork &

exec xmonad
