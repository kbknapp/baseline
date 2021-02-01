#!/bin/bash

function f_fish_config_main() {
    f_check_prog "fish"

    cp -r ~/.dotfiles/fish/ ~/.config/
}

function f_fisher_main() {
    f_check_prog "curl"
    f_check_prog "fish"

    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
}

function f_fisher_fzf_main() {
    f_check_prog "curl"
    f_check_prog "fish"
    f_check_prog "fisher"

    fisher install PatrickF1/fzf.fish
}

function f_fish_default_main() {
    f_check_prog "chsh"

    sudo chsh -s $(which fish) $SCRIPT_RUN_USER
}
