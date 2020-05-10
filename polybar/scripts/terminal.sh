#!/usr/bin/env bash

case "$1" in
    --click)
        i3-sensible-terminal bash -c "$HOME/.bin/scratchpad i3-sensible-terminal"
        # BASEDIR=$(dirname "$0")
        # "$BASEDIR/terminal-open.sh"
        # $HOME/.bin/scratchpad "i3-sensible-terminal"
        ;;
    *)
        echo "  "
        ;;
esac

