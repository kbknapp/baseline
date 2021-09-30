#!/bin/bash

function f_misc_small_main() {
    f_out "Installing various common programs"

    $INSTALL_CMD openssh-askpass p7zip \
        p7zip-plugins unar meld ncdu
}
