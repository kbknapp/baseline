#!/bin/bash

function f_picom_main() {
    f_check_prog "git"
    f_check_prog "meson"
    f_check_prog "ninja"

    f_out "Compiling and installing Picom"

    cd ~/.build/
    git clone --recursive https://github.com/yshui/picom || true
    cd ~/.build/picom/
    git submodule update --init --recursive
    meson --optimization 3 --buildtype=release . build
    ninja -C build
    sudo ninja -C build install
}

function f_picom_toast_main() {
    f_check_prog "toast"
    f_check_prog "docker"

    f_out "Compiling and Installing picom"

    cp ~/Projects/baseline/src/common/picom.toast.yml ~/.build/
    cd ~/.build/
    toast -f picom.toast.yml
    sudo tar xzpf picom_target_root.tgz -C /
}
