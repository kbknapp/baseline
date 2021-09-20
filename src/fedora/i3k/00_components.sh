#!/bin/bash

function f_get_de_components() {
    _DE_COMPONENTS=$(dialog --checklist "Which DE Components?" 400 400 5 \
       i3_gaps "i3 Gaps" off \
       i3_gaps_toast "i3 Gaps (Toast)" on \
       ksuperkey "KSuperKey" on \
       picom "Picom" off \
       picom_toast "Picom (Toast)" on \
       polybar "Polybar" off \
       rm_unneeded_i3k "Remove Unneeded KDE Apps" on \
        --output-fd 1)
    clear

    readonly _DE_COMPONENTS
}
