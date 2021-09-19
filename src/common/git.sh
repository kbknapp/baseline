#!/bin/bash

function f_git_common() {
    f_out "Setting up git"

    cat <<EOF > ~/.gitconfig
[user]
	email = kbknapp@gmail.com
	name = Kevin K.
	signingkey = 17218E4B3692F01A
[color]
	ui = true
[rebase]
	autosquash = true
[commit]
	gpgsign = true
[pull]
	rebase = true
[core]
	excludesfile = /home/kevin/.gitignore
[pager]
 diff = delta
 log = delta
 reflog = delta
 show = delta
[delta]
 plus-style = "syntax #012800"
 minus-style = "syntax #340001"
 syntax-theme = Monokai Extended
 navigate = true
[interactive]
 diffFilter = delta --color-only
EOF

    cat <<EOF > ~/.gitignore
**/*.vi
**/.idea/
EOF
}

function f_git_delta() {
    f_out "Setting up git-delta"

    cat <<EOF >> ~/.gitconfig
[pager]
 diff = delta
 log = delta
 reflog = delta
 show = delta
[delta]
 plus-style = "syntax #012800"
 minus-style = "syntax #340001"
 syntax-theme = Monokai Extended
 navigate = true
[interactive]
 diffFilter = delta --color-only
EOF
}


function f_git_main() {
    f_out "Installing git and git related tools"

    $INSTALL_CMD git gitg tig

    f_git_common
}
