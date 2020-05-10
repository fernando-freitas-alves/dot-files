#!/bin/sh

i3-sensible-terminal \
    bash -ic \
    'echo "Upgrading dist packages"; sudo apt upgrade; read -p "Press any key to exit..."; exit'

