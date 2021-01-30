#!/bin/bash

function f_clean_cache_main() {
	f_out "Cleaning the RPM cache"

	sudo dnf clean all
}
