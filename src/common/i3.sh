#!/bin/bash

function f_i3_gaps_main() {
    f_check_prog "git"
    f_check_prog "meson"
    f_check_prog "ninja"

    f_out "Compiling and Installing i3-gaps"

    cd ~/.build/
    git clone --recursive https://github.com/Airblader/i3 || true

    mkdir -p ~/.build/i3/build
    cd ~/.build/i3/build || exit
    meson setup --sysconfdir /etc --prefix /usr --optimization 3 --buildtype release ..
    ninja
    sudo ninja install
}
