#!/bin/bash

function f_build_tools_main() {
    f_out "Installing build tools"

    $INSTALL_CMD -t pattern devel_basis
    $INSTALL_CMD llvm clang pkgconfig meson xfsprogs cmake
}
