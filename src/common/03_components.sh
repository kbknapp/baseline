#!/bin/bash

function f_get_common_components() {
    _COMPONENTS=$(dialog --checklist "Which Common Components?" 400 400 37 \
       home_dirs "Common Home Dirs" on \
       vscode "VSCode (Native)" on \
       curl "curl" on \
       git "git" on \
       build_tools "Built Tools" on \
       ansible "Ansible" off \
       fish "Fish Shell" off \
       fish_default "Make Fish Default Shell" off \
       fish_config "Fish Configuration" off \
       fisher "Fish Package Manger " off \
       fisher_fzf "Fish FZF Support via Fisher" off \
       intel_undervolt "Intel-Undervolt" off \
       steam "Steam" off \
       virt "Virtualization" off \
       fonts "Fonts" on \
       fzf "Fuzzy Finder" on \
       zsh "ZSH" on \
       zsh_config "ZSH Configured" on \
       zsh_default "Make ZSH Default Shell" on \
       wireguard "Wireguard" off \
       python_components "Python Components" on \
       vlc "VLC" on \
       nmap "Nmap" on \
       shellcheck "ShellCheck" on \
       ranger "Ranger" on \
       emacs "Emacs" on \
       vim "VIM" on \
       neovim "NeoVIM (Native)" off \
       neovim_appimage "NeoVIM Nightly (AppImage)" off \
       neovim_config "NeoVIM Config" on \
       rust "Rust" on \
       rm_unneeded "Remove Unneeded" on \
       flameshot "Flameshot" on \
       misc_small "Misc Small Tools" off \
       nvidia "Nvidia" off \
       amdgpu "AMD GPU" off \
       alacritty "Alacritty" on \
       alacritty_ligatures "Alacritty_ligatures" off \
       kitty "KiTTY" off \
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
