#!/bin/sh
# Script to configure X, start common apps, and start xmonad.

xsetroot -cursor_name left_ptr &

urxvtd --quiet --opendisplay --fork &

exec xmonad
