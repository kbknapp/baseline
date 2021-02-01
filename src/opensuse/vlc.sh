#!/bin/bash

function f_vlc_main() {
    f_out "Installing VLC"

    $INSTALL_CMD --allow-vendor-change vlc vlc-codecs vlc-codec-gstreamer
}
