#!/bin/bash

function f_virtualization_main() {
    f_out "Installing virtualization tools"

    $INSTALL_CMD @development-tools @virtualization virt-top virt-manager \
        cockpit cockpit-bridge libguestfs-tools guestfs-browser 
}
