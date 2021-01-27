#!/bin/bash

function f_python_components_common() {
    f_out "Choosing Python Components"

    _PY_CORE=$(dialog --checklist "Which Python Packagers?" 400 400 5 \
	  "python3" "Python 3" on \
	  "pip3" "Standard Python Package Manager" on \
        --output-fd 1)
    clear

    _PY_PACKAGERS=$(dialog --checklist "Which Python Packagers?" 400 400 5 \
	  "pipx" "Run Python Apps Isolated" on \
        --output-fd 1)
    clear

    _PY_ENV=$(dialog --checklist "Which Python Managers?" 400 400 5 \
	  "pyenv" "Local Python Installs" on \
	  "virtualenvwrapper" "Wrap Python Virtual Envs" on \
        --output-fd 1)
    clear

    _PIP_PACKAGES=$(dialog --checklist "Which Python Applications?" 400 400 19 \
	  "rtv" "Reddit Terminal Viewer" on \
	  "bpytop" "Beautiful Top" on \
	  "youtube-dl" "Download Youtube Videos" on \
	  "docker-compose" "Manage Docker Services" on \
        --output-fd 1)
    clear

    _PY_DEV_TOOLS=$(dialog --checklist "Which Python Dev Tools?" 400 400 15 \
	  "black" "Code Formatting" on \
	  "pylint" "Standard Linter - more strict" on \
	  "flake8" "Other Linter - less strict" on \
	  "pytest" "Python Testing Framework" on \
        --output-fd 1)
    clear

    for COM in "${_PY_CORE[@]}"; do
      if type f_${COM}_pre 2>/dev/null; then
          f_${COM}_pre
      fi
      if type f_${COM}_main 2>/dev/null; then
          f_${COM}_main
      else
          f_out "${COM} isn't supported with this OS/DE combo"
      fi
      if type f_${COM}_post 2>/dev/null; then
          f_${COM}_post
      fi
    done

    PIP_CMD=pip
    if command -v pip3 >/dev/null 2>&1; then
        PIP_CMD=pip3
        PIP_APP_CMD=pip3
    fi

    for TOOL in "${_PY_PACKAGERS[@]}"; do
        case $TOOL in
            pipx)
                $PIP_CMD install --user --upgrade $TOOL
                pipx ensurepath
                cat 'source $HOME/.dotfiles/zsh/addons/pipx.zshrc-addon' >> $HOME/.zshrc
                ;;
        esac
    done

    if command -v pipx >/dev/null 2>&1; then
        PIP_APP_CMD=pipx
    fi

    for TOOL in "${_PY_ENV[@]}"; do
        case "$TOOL" in
            virtualenvwrapper)
                $PIP_CMD install --user --upgrade $TOOL
                cat 'source $HOME/.dotfiles/zsh/addons/virtualenvwrapper.zshrc-addon' >> $HOME/.zshrc
                ;;
            *)
                $PIP_CMD install --user --upgrade $TOOL
                ;;
        esac
    done

    for TOOL in "${_PIP_PACKAGES[@]}"; do
        $PIP_APP_CMD install $TOOL
    done

    for TOOL in "${_PY_DEV_TOOLS[@]}"; do
        $PIP_APP_CMD install $TOOL
    done
}

function f_python_core_components_common() {
    f_out "Choosing Python Core Components"

    readonly _PY_CORE
}
