#!/bin/bash

# if [[ $(ps aux | grep -E "^sync_folders$") ]] || [[ $(ps aux | grep -E "^inotifywait$") ]]; then
    # sleep 60
    killall sync_folders
    killall inotifywait
# fi

SRC=""
SRC="$SRC /home/developer/.config/i3"
SRC="$SRC /home/developer/.config/nvim"
SRC="$SRC /home/developer/.config/polybar"
SRC="$SRC /home/developer/.config/ranger"
SRC="$SRC /home/developer/.config/tmux"
SRC="$SRC /home/developer/.config/zsh"
SRC="$SRC /home/developer/.local/share/fonts"
SRC="$SRC /home/developer/.xinitrc"

DEST1="/fileserver/fernando.freitas/config"
DEST2="/home/developer/github/dot-files"

echo "Syncing folders:"
echo $SRC | tr ' ' '\n' | sed '/^\s*$/d' | sed 's/'$(echo $HOME | sed 's/\//\\\//g')'/~/g'
echo -e "\ninto: $DEST1\n"
echo -e "   and: $DEST2\n"

SYNC1="sync_folders $SRC $DEST1"
SYNC2="sync_folders $SRC $DEST2"
echo $SYNC1
echo $SYNC2
eval $SYNC1
eval $SYNC2

############################################################################################
echo -e "\n"

SRC=""
SRC="$SRC \"/home/developer/.bin/\*\""

DEST="/fileserver/fernando.freitas/bin/"

echo "Syncing folders:"
echo $SRC | tr ' ' '\n' | sed '/^\s*$/d' | sed 's/'$(echo $HOME | sed 's/\//\\\//g')'/~/g'
echo -e "\ninto: $DEST\n"

SYNC="sync_folders $SRC $DEST"
echo $SYNC
eval $SYNC

############################################################################################
echo -e "\n"

SRC=""
SRC="$SRC \"/home/developer/.screenlayout/\*\""

DEST="/fileserver/fernando.freitas/config/screenlayout/"

echo "Syncing folders:"
echo $SRC | tr ' ' '\n' | sed '/^\s*$/d' | sed 's/'$(echo $HOME | sed 's/\//\\\//g')'/~/g'
echo -e "\ninto: $DEST\n"

SYNC="sync_folders $SRC $DEST"
echo $SYNC
