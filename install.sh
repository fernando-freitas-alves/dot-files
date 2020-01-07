#!/bin/bash -x

INSTALL_DIR=$HOME

THIS_FILE=$(readlink -f "$0")
BASE_DIR=$(dirname "$THIS_FILE")

pushd $INSTALL_DIR > /dev/null

    # Copy content
    cp -rt .local/share \
      $BASE_DIR/fonts

    cp -rt .config \
      $BASE_DIR/i3 \
      $BASE_DIR/nvim \
      $BASE_DIR/polybar \
      $BASE_DIR/ranger \
      $BASE_DIR/rofi \
      $BASE_DIR/tmux \
      $BASE_DIR/zsh

    # Create symbolic links
    PATHS=( \
	.config/zsh \
	.config/tmux \
	)
    for path in "${PATHS[@]}"; do
        find $path -maxdepth 1 -name ".*" | \
          xargs -I{} ln -sf {} .
    done
    ln -sf .config/i3 .i3

popd> /dev/null

