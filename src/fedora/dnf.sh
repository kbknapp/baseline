#!/bin/bash

function f_dnf_config_main() {
    f_out "Setting DNF options"

    echo 'fastest_mirror=True' | sudo tee -a /etc/dnf/dnf.conf
    echo 'delta_rpm=True' | sudo tee -a /etc/dnf/dnf.conf
}
