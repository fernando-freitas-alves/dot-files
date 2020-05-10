#!/bin/bash -x

INSTALL_DIR=$HOME

THIS_FILE=$(readlink -f "$0")
BASE_DIR=$(dirname "$THIS_FILE")

pushd $BASE_DIR > /dev/null

    # Copy content
    cp -rt . \
      $INSTALL_DIR/.local/share/fonts \
      $INSTALL_DIR/.config/i3 \
      $INSTALL_DIR/.config/nvim \
      $INSTALL_DIR/.config/polybar \
      $INSTALL_DIR/.config/ranger \
      $INSTALL_DIR/.config/rofi \
      $INSTALL_DIR/.config/tmux \
      $INSTALL_DIR/.config/zsh

popd> /dev/null

