#!/usr/bin/env bash

#icon="$HOME/.xlock/icon.png"
tmpbg='/tmp/screen.png'

#(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
#convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"

# Turn the screen off after a delay.
sleep 10; pgrep i3lock && xset dpms force off
