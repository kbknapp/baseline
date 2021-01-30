#!/bin/bash

function f_upgrade_main() {
    f_out "Upgrading base system"

    sudo pacman -Syyu --needed --noconfirm
}
