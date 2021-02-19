#!/bin/bash

function f_alacritty_main() {
    if [ -e ~/.cargo/env ]; then
	    source ~/.cargo/env
    fi
    f_check_prog "cargo"
    f_check_prog "git"

    f_out "Compiling alacritty"
    cd ~/.build/
    git clone https://github.com/alacritty/alacritty || true
    cd alacritty

    cargo build --release

    f_out "Setting up Alacritty"
	sudo cp target/release/alacritty /usr/bin
    cp -r ~/.dotfiles/alacritty ~/.config/

    cd
}

function f_alacritty_ligatures_main() {
    if [ -e ~/.cargo/env ]; then
	    source ~/.cargo/env
    fi
    f_check_prog "cargo"
    f_check_prog "git"

    f_out "Compiling alacritty"
    cd ~/.build/
    git clone https://github.com/zenixls2/alacritty.git --branch ligature alacritty-ligatures || true
    cd alacritty-ligatures

    cargo build --release

    f_out "Setting up Alacritty"
	sudo cp target/release/alacritty /usr/bin
    cp -r ~/.dotfiles/alacritty ~/.config/

    cd
}
