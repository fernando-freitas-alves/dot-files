#!/bin/sh

# i3-sensible-terminal \
#     bash -itc \
#     'echo "Openning aptitude"; aptitude -i'
#     # 'echo "Upgrading dist packages"; sudo apt upgrade; read -p "Press any key to exit..."; exit'

i3-float -s -n kitty -W 1200 -H 900 kitty aptitude -i
