#!/bin/bash

function f_neovim_appimage_pre() {
    f_out "Installing NeoVIM (AppImage) Deps"

    $INSTALL_CMD --setopt=install_weak_deps=False python3-neovim
    $INSTALL_CMD fzf ctags npm nodejs
}

function f_neovim_main() {
    f_out "Installing NeoVIM (Native)"

    $INSTALL_CMD neovim python3-neovim fzf ctags npm nodejs
}
