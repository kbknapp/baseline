#!/bin/bash

function f_misc_small_main() {
    f_out "Installing various common programs"

    $INSTALL_CMD exfat-utils ffmpeg fuse-exfat p7zip pv python3-devel \
        unar meld exfat-utils fuse-exfat wavemon iotop nload ncdu xfsprogs 
}
