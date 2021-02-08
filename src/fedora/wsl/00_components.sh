#!/bin/bash

function f_get_de_components() {
    _DE_COMPONENTS=$(dialog --checklist "Which DE Components?" 400 400 5 \
       wslu "WSL Utilities COPR repo" on \
       add_user "Add User" on \
        --output-fd 1)
    clear

    readonly _DE_COMPONENTS
}
