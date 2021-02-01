#!/bin/bash

function f_os_pre() {
    f_out "(PRE) Running OS pre-script"

    _OS_COMPONENTS_FIRST=true
    _OS_HAS_BASE=true
    _OS_BASE=ubuntu
    INSTALL_CMD='sudo apt-get install -y'

    for s in ./apt_common/*; do
        [[ -e $s ]] || break
        S_NAME=$(basename $s)
        source "$s"
    done
}
