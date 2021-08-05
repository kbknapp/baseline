#!/bin/bash

function f_fzf_main() {
    f_out "Installing fzf"

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf || true
    ~/.fzf/install --all
}
