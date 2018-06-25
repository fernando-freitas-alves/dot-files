#!/bin/sh

count=`ps aux | grep -c "/usr/share/spotify/spotify"`
if [ $count -eq 1 ]; then
    spotify
fi
i3-msg "[class=Spotify] focus"

