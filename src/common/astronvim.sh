#!/bin/bash

function f_astronvim_main() {
  f_out "Installing AstroNVim"

  git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

  nvim  --headless -c 'quitall'
  cp -r ~/.dotfiles/astronvim/* ~/.config/nvim/lua/user/
}
