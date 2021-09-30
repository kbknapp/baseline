#!/bin/bash

function f_i3_pre() {
    f_out "Installing i3 Libraries and Utils"

    $INSTALL_CMD \
	      desktop-file-utils \
        xcb-util-xrm \
        startup-notification

    f_out "Installing i3 Required Programs"

    $INSTALL_CMD arandr rofi i3status feh
}

