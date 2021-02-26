#!/bin/bash

function f_podman_main() {
    f_out "Installing Podman"

    $INSTALL_CMD podman podman-compose
}
