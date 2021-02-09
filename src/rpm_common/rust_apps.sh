#!/bin/bash

function f_rust_apps_pre() {
    f_out "Installing Rust applications deps"

    $INSTALL_CMD openssl-devel cmake pkg-config perl-FindBin
}
