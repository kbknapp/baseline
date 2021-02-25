#!/bin/bash

function f_de_post() {
    f_out "Finalizing WSL Setup"

    for COM in ${_DE_COMPONENTS[@]}; do
        if type f_${COM}_post 2>/dev/null; then
            f_${COM}_post
        fi
    done
}
