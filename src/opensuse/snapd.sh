#!/bin/bash

function f_snapd_main() {
    f_out "Installing and setting up Snapd"

    sudo zypper addrepo --refresh https://download.opensuse.org/repositories/system:/snappy/openSUSE_Tumbleweed snappy
    sudo zypper --gpg-auto-import-keys refresh
    sudo zypper dup --from snappy
    $INSTALL_CMD snapd
    sudo systemctl enable --now snapd
    sudo systemctl enable --now snapd.apparmor
}
