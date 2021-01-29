#!/bin/bash

function f_get_os_components() {
    _OS_COMPONENTS=$(dialog --checklist "Which Arch Components?" 400 400 5 \
	    rua "Rua AUR Helper" off \
	    paru "Paru AUR Helper" on \
	    yay "Yay AUR Helper" off \
	    aura "Aura AUR Helper" off \
	    pacaur "Pacaur AUR Helper" off \
        --output-fd 1)
    clear

    readonly _OS_COMPONENTS
}
