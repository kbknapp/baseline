#!/bin/bash

function f_python3_main() {
	if command -v python3 >/dev/null 2>&1; then 
		f_out "Python 3 already installed"
	else
		f_out "Installing Python 3"
		$INSTALL_CMD python3
	fi
}

function f_pip3_main() {
	if command -v pip3 >/dev/null 2>&1; then 
		f_out "Pip 3 already installed"
	else
		f_out "Installing Pip 3"
		$INSTALL_CMD python3-pip
	fi
}
