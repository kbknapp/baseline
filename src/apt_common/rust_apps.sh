#!/bin/bash

function f_rust_apps_pre() {
    f_out "Installing Rust applications deps"

    $INSTALL_CMD libssl-dev cmake pkg-config llvm clang llvm-dev
}
