#!/bin/bash

function f_neovim_main() {
    f_out "Installing NeoVIM"

    sudo dnf install -y neovim python3-neovim fzf ctags npm nodejs

    f_neovim_common
}
