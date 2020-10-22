#!/bin/bash

function f_appimaged_main() {
    f_check_prog "wget"

    f_out "Setting up appimaged"

    # Download
    cd ~/.local/bin/ || exit
    wget -c https://github.com/$(wget -q https://github.com/probonopd/go-appimage/releases -O - | grep "appimaged-.*-x86_64.AppImage" | head -n 1 | cut -d '"' -f 2)
    chmod +x appimaged-*.AppImage
    cd || exit

    # @TODO Get actual name instead of glob to prevent running multiple copies
    # Launch
    ./appimaged-*.AppImage

}
