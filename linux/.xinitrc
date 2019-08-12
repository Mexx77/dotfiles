#!/bin/sh
# Script to configure X, start common apps, and start xmonad.

export PATH="$PATH:$HOME/bin:$HOME/bin-helper"
export VISUAL=nvim
export EDITOR="$VISUAL"

xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xdefaults &

# Set wallpaper
feh --bg-scale nextCloud/Photos/2016\ Neuseeland/09-Otago/DSC01184.JPG &

urxvtd --quiet --opendisplay --fork &

exec xmonad
