#!/bin/bash

function f_standardnotes_main() {
    f_check_prog "wget"
    local STANDARD_NOTES_LATEST

    f_out "Setting up standardnotes"

    STANDARD_NOTES_LATEST=$(wget -q https://github.com/standardnotes/desktop/releases -O - | grep \"standard-notes-.*-x86_64.AppImage\" | head -n 1 | cut -d '\"' -f 2)

    # Download
    cd ~/.local/bin/ || exit
    wget -O ~/.local/bin/$(echo $STANDARD_NOTES_LATEST | grep -oP '[^/]*$') -c https://github.com/${STANDARD_NOTES_LATEST}
    chmod +x "$STANDARD_NOTES_LATEST"
    cd || exit
}
