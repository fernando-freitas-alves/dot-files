#!/bin/sh -e

# Lock screen
export I3LOCK="/usr/bin/i3lock"
~/.config/i3/bin/i3lock-fancy-multimonitor/lock --no-text --blur=0x8

# Turn the screen off after a delay
/home/developer/.nix-profile/bin/xidlehook --once --timer 3 'pgrep -f $I3LOCK && xset dpms force off' ''
