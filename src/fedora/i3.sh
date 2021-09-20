#!/bin/bash

function f_i3_pre() {
    f_out "Installing i3 Libraries and Utils"

    $INSTALL_CMD \
	      desktop-file-utils \
        xcb-proto

    f_out "Installing i3 Required Programs"

    $INSTALL_CMD arandr rofi i3status feh
}

function f_i3_gaps_pre() {
  f_out "Installing i3-gaps build tools"

  $INSTALL_CMD asciidoc \
    meson \
    perl-ExtUtils-MakeMaker


  f_out "Installing i3-gaps build deps"

  $INSTALL_CMD  \
     yajl-devel \
     alsa-lib-devel \
     cairo-devel \
     dbus-devel \
     fontconfig-devel \
     freetype-devel \
     jsoncpp-devel \
     libX11-devel \
     libXcomposite-devel \
     libXdamage-devel \
     libXext-devel \
     libXfixes-devel \
     libXinerama-devel \
     libXrandr-devel \
     libXrender-devel \
     libconfig-devel \
     libcurl-devel \
     libdrm-devel \
     libev-devel \
     libmpdclient-devel \
     libxcb-devel \
     libxdg-basedir-devel \
     libxkbcommon-devel \
     libxkbcommon-x11-devel \
     mesa-libGL-devel \
     pango-devel \
     pcre-devel \
     startup-notification-devel \
     uthash-devel \
     wireless-tools-devel \
     xcb-util-cursor-devel \
     xcb-util-devel \
     xcb-util-image-devel \
     xcb-util-keysyms-devel \
     xcb-util-wm-devel \
     xcb-util-xrm-devel \
     libXtst-devel \
     pulseaudio-libs-devel \
     libX11-devel

}
