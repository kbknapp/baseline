#!/bin/bash

function _f_alacritty_pre() {
    f_out "Installing alacritty deps"
    $INSTALL_CMD fontconfig-devel freetype-devel libxcb-devel \
        xcb-util-image-devel libXrender-devel libxkbcommon-devel
}

function f_alacritty_pre() {
    _f_alacritty_pre
}

function f_alacritty_ligatures_pre() {
    _f_alacritty_pre
}
