#!/bin/bash

function f_kitty_main {
    f_check_prog "curl"

    f_out "Installing KiTTY"

    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
}
