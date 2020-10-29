#!/bin/bash

function f_standardnotes_main() {
    f_check_prog "wget"

    f_out "Setting up standardnotes"

    # Download
    cd ~/.local/bin/ || exit
    wget -c https://github.com/$(wget -q https://github.com/standardnotes/desktop/releases -O - | grep "standard-notes-.*-x86_64.AppImage" | head -n 1 | cut -d '"' -f 2)
    chmod +x $(ls standard-notes-*.AppImage)
    cd || exit
}
