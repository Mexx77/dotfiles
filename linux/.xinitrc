#!/bin/sh
# Script to configure X, start common apps, and start xmonad.

export PATH="$PATH:$HOME/bin:$HOME/bin-helper"
export VISUAL=nvim
export EDITOR="$VISUAL"

xsetroot -cursor_name left_ptr &

urxvtd --quiet --opendisplay --fork &

exec xmonad
