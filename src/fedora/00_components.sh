#!/bin/bash

function f_get_os_components() {
    _OS_COMPONENTS=$(dialog --checklist "Which Fedora Components?" 400 400 1 \
       clean_cache "Clean the RPM cache" on \
       upgrade "Upgrade the base system" on \
       rpm_fusion "RPM Fusion" on \
       podman "Podman" on \
        --output-fd 1)
    clear

    readonly _OS_COMPONENTS
}
