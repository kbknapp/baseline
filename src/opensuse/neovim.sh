#!/bin/bash

function f_neovim_main() {
    f_out "Installing and setting up NeoVIM"

    $INSTALL_CMD neovim python3-neovim fzf ctags
}
