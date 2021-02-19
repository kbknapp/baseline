#!/bin/bash

function _f_alacritty_pre() {
    f_out "Installing alacritty deps"

    $INSTALL_CMD fontconfig libfreetype-dev libxcb1-dev \
	    libxcb-image0-dev libxcb-randr0-dev libxcb-image0-dev \
	    libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev \
      libfontconfig-dev
}
function f_alacritty_pre() {
    _f_alacritty_pre
}
function f_alacritty_ligatures_pre() {
    _f_alacritty_pre
}
