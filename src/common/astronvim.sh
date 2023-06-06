#!/bin/bash

function f_astronvim_main() {
  f_out "Installing AstroNVim"

  git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

  nvim  --headless -c 'quitall'
  git clone https://github.com/AstroNvim/user_example ~/.config/nvim/lua/user
  cp ~/.dotfiles/astronvim/community.lua ~/.config/nvim/lua/user/community.lua
}
