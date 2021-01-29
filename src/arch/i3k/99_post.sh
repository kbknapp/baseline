#!/bin/bash

function f_de_post() {
    f_out "Finalizing i3 (KDE) Setup"

    sudo cp ~/.dotfiles/i3/common/usr/bin/* /usr/bin
    cp -r ~/.dotfiles/i3/common/home/.local/* ~/.local/ || {
	    cp -r ~/.dotfiles/i3/common/home/.local/bin/* ~/.local/bin/
	    cp -r ~/.dotfiles/i3/common/home/.local/share/* ~/.local/share/
    }
    cp -r ~/.dotfiles/i3/common/home/.config/fontconfig/ ~/.config/
    cp -r ~/.dotfiles/i3/common/home/.xprofile ~/
    cp -r ~/.dotfiles/i3/common/home/.Xresources ~/
    sudo cp ~/.dotfiles/i3/kde/etc/* /etc
    mkdir -p ~/.config/plasma-workspace/env
    cp -r ~/.dotfiles/i3/kde/home/.config/* ~/.config/
}
