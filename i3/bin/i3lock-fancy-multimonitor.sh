#!/bin/sh -e

# Lock screen
~/.config/i3/bin/i3lock-fancy-multimonitor/lock --no-text --blur=0x8

# Turn the screen off after a delay.
sleep 60; pgrep lock && xset dpms force off
