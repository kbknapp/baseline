#!/bin/bash

function f_zsh_default_pre() {
    f_check_prog "Installing chsh"

    $INSTALL_CMD util-linux-user
}

function f_zsh_main() {
    f_out "Installing and setting up ZSH"

    $INSTALL_CMD zsh zsh-syntax-highlighting fzf
}
