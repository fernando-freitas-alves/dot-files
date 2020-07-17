#!/bin/sh

# i3-sensible-terminal \
#     bash -itc \
#     'echo "Openning aptitude"; aptitude -i'
#     # 'echo "Upgrading dist packages"; sudo apt upgrade; read -p "Press any key to exit..."; exit'

# i3-float -s -n kitty -W 1200 -H 900 kitty aptitude -i

BASEDIR=$(dirname $0)
CLASS=$(basename $(readlink -e $(which x-terminal-emulator)))
# CMD="x-terminal-emulator sudo -E TERMINFO=\"$TERMINFO\" aptitude -i"
CMD="x-terminal-emulator aptitude -i"
# CMD="$BASEDIR/dist-updates.sh"
i3-float -s -n $CLASS -W 1200 -H 900 $CMD
# echo TERMINFO="$TERMINFO" i3-float -s -n $CLASS -W 1200 -H 900 $CMD
