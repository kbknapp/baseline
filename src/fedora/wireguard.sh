#!/bin/bash

function f_wireguard_main() {
    f_out "Installing setting Wireguard"

    sudo dnf copr enable -y jdoss/wireguard
    $INSTALL_CMD wireguard-dkms wireguard-tools
}
