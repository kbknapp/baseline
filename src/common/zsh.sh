#!/bin/bash

function f_zsh_config_main() {
    f_check_prog "git"

    f_out "Setting up ZSH"

    git clone https://github.com/momo-lab/zsh-abbrev-alias ~/.config/zsh-abbrev-alias/ || true
    git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh || true
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || true
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || true

    cp ~/.dotfiles/zsh/zshrc-linux ~/.zshrc
    #cp ~/.dotfiles/p10k/.p10k.zsh ~/
    #git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.oh-my-zsh/themes/powerlevel10k || true
}

function f_zsh_default_main() {
    f_check_prog "chsh"

    sudo chsh -s $(which zsh) ${SCRIPT_RUN_USER}
}

function f_zsh_main() {
    f_out "Installing and setting up ZSH"

    $INSTALL_CMD zsh zsh-syntax-highlighting fzf
}
