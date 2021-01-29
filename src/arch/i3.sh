#!/bin/bash

function f_i3_gaps_aur_pre() {
    f_out "Installing i3 Required Programs"

    $INSTALL_CMD arandr rofi i3status feh
}

function f_i3_gaps_aur_main() {
	f_out "Installing i3 Gaps from AUR"

	if command -v rua 2>/dev/null ;then
		rua install i3-gaps-next-git
		return
	fi
	if command -v yay 2>/dev/null ;then
		yay -a -S i3-gaps-next-git
		return
	fi
	if command -v aura 2>/dev/null ;then
		sudo aura -A i3-gaps-next-git
	fi
}
