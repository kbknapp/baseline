#!/bin/bash

function f_picom_post() {
    f_out "Configuring Picom"

    cp -r ~/.dotfiles/i3/kde/home/.config/picom/ ~/.config/
}

function f_picom_toast_post() {
    f_picom_post
}
