#!/bin/bash

function f_os_pre() {
    _OS_COMPONENTS_FIRST=true
    _OS_HAS_BASE=true
    _OS_BASE=arch_common

    f_out "(PRE) Running OS pre-script"

    INSTALL_CMD='sudo pacman -S --needed --noconfirm'

    f_out "(PRE) Finding fastest mirrors"
    sudo reflector --country us --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

    f_out "Upgrading the system first"

    sudo pacman -Syyu --needed --noconfirm
}
