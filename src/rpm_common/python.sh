#!/bin/bash

function f_pip3_main() {
    f_out "Installing setting Pip 3"

    $INSTALL_CMD python3-pip
}

function f_python3_main() {
    f_out "Installing Python 3"

    $INSTALL_CMD python3
}
