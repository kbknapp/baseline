#!/bin/bash

function f_virtualization_main() {
    f_out "Installing virtualization tools"

    $INSTALL_CMD @virtualization virt-top virt-manager \
        libguestfs-tools
}
