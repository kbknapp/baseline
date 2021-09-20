#!/bin/bash

function f_picom_pre() {
    f_out "Installing Picom Libraries and Utils"

    $INSTALL_CMD \
	      desktop-file-utils \
        xcb-proto
}

function f_picom_pre() {
  f_out "Installing picom build tools"

  $INSTALL_CMD gcc \
    meson \

  f_out "Installing picom build deps"

  $INSTALL_CMD  \
    dbus-devel \
    libX11-devel \
    libX11-xcb \
    libXext-devel \
    libconfig-devel \
    libdrm-devel \
    libev-devel \
    libxcb-devel \
    mesa-libGL-devel \
    pcre-devel \
    pixman-devel \
    uthash-devel \
    xcb-util-image-devel \
    xcb-util-renderutil-devel \
    xorg-x11-proto-devel
}
