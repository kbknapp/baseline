#!/bin/bash

function f_alacritty_pre() {
    f_out "Installing Alacritty deps"

    $INSTALL_CMD fontconfig-devel freetype-devel libxcb-devel \
        xcb-util-image-devel libXrender-devel
}
function f_alacritty_pre() {
    _f_alacritty_pre
}
function f_alacritty_ligatures_pre() {
    _f_alacritty_pre
}
