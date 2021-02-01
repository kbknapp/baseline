#!/bin/bash

function f_wireguard_main() {
    f_out "Installing setting Wireguard"

    sudo zypper addrepo -y -f obs://network:vpn:wireguard wireguard
    $INSTALL_CMD wireguard-kmp-default wireguard-tools
}
