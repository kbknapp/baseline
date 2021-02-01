#!/bin/bash

function f_fish_main() {
    f_out "Installing and setting up Fish"

    $INSTALL_CMD fish fzf
}


function f_fish_default_pre() {
    f_check_prog "Installing chsh"

    $INSTALL_CMD util-linux-user
}
