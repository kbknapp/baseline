#!/bin/bash

function f_dnf_config_main() {
    f_out "Setting DNF options"

    echo 'fastestmirror=True' | sudo tee -a /etc/dnf/dnf.conf
    echo 'deltarpm=True' | sudo tee -a /etc/dnf/dnf.conf
}
