#!/bin/bash

function f_obsidian_main() {
    f_check_prog "wget"

    f_out "Setting up Obsidian"

    # Download
    cd ~/.local/bin/ || exit
    wget -c https://github.com/$(wget -q https://github.com/obsidianmd/obsidian-releases/releases -O - | grep "Obsidian-.*.AppImage" | head -n 1 | cut -d '"' -f 2)
    chmod +x Obisian-*.AppImage
    cd || exit
}
