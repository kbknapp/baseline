#!/bin/bash

function f_os_post() {
    f_out "Finishing up Arch Install"

    sudo pacman -Syyuu
}
