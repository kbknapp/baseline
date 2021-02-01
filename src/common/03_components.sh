#!/bin/bash

function f_get_common_components() {
    _COMPONENTS=$(dialog --checklist "Which Common Components?" 400 400 37 \
       home_dirs "Common Home Dirs" on \
       vscode "VSCode (Native)" on \
       curl "curl" on \
       git "git" on \
       build_tools "Built Tools" on \
       ansible "Ansible" off \
       fish "Fish Shell" on \
       fish_default "Make Fish Default Shell" on \
       fish_config "Fish Configuration" on \
       fisher "Fish Package Manger " on \
       fisher_fzf "Fish FZF Support via Fisher" on \
       intel_undervolt "Intel-Undervolt" off \
       steam "Steam" off \
       virt "Virtualization" off \
       fonts "Fonts" on \
       zsh "ZSH"off \
       zsh_config "ZSH Configured"off \
       zsh_default "Make ZSH Default Shell" off \
       wireguard "Wireguard" on \
       python_components "Python Components" on \
       vlc "VLC" on \
       nmap "Nmap" on \
       shellcheck "ShellCheck" on \
       ranger "Ranger" on \
       emacs "Emacs" on \
       vim "VIM" on \
       neovim "NeoVIM (Native)" off \
       neovim_appimage "NeoVIM (AppImage)" on \
       neovim_config "NeoVIM Config" on \
       rust "Rust" on \
       rm_unneeded "Remove Unneeded" on \
       flameshot "Flameshot" on \
       misc_small "Misc Small Tools" off \
       nvidia "Nvidia" off \
       amdgpu "AMD GPU" off \
       alacritty "Alacritty" off \
       kitty "KiTTY" on \
       docker "Docker" off \
       flatpak "Flatpak" on \
       flatpak_apps "FlatPak Apps" on \
       snapd "Snapd" off \
       snap_apps "Snap Apps" off \
       rust_apps "Compile Rust Apps" on \
       appimaged "AppImage Integration Daemon" off \
       standardnotes "StandardNotes" off \
        --output-fd 1)
    clear

    readonly _COMPONENTS
}
