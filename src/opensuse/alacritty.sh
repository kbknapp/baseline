#!/bin/bash

function f_alacritty_main() {
    f_out "Installing Alacritty deps"

    $INSTALL_CMD fontconfig-devel freetype-devel libxcb-devel \
        xcb-util-image-devel libXrender-devel

    f_alacritty_common
}
