#!/bin/bash

function f_paru_main() {
	f_out "Installing Paru AUR manager"

	$INSTALL_CMD base-devel
	f_aur_install "paru"
}
