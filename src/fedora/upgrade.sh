#!/bin/bash

function f_upgrade_main() {
	f_out "Upgrading the base system"

	sudo dnf upgrade --best --allowerasing -y
}
