#!/bin/bash

function f_mirrors_main() {
	f_out "Finding Fastest Mirrors"
	sudo reflector --country us --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
}
