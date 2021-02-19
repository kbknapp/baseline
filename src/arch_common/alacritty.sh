#!/bin/bash

function _f_alacritty_pre() {
  f_out "Installing alacritty deps"

  $INSTALL_CMD fontconfig freetype2 libxcb \
        xcb-util-image libxrender
}
function f_alacritty_pre() {
  _f_alacritty_pre
}
function f_alacritty_ligatures_pre() {
  _f_alacritty_pre
}
