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

function f_i3_gaps_toast_main() {
    f_check_prog "toast"
    f_check_prog "docker"

    f_out "Compiling and Installing i3-gaps"

    cp ~/Projects/baseline/src/common/i3.toast.yml ~/.build/
    cd ~/.build/
    toast -f i3.toast.yml
    sudo tar xzpf i3_target_root.tgz -C /
}
