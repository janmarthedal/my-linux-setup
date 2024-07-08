#!/bin/bash

if [[ -z $1 ]]; then
  echo "Missing theme"
  exit 1
fi

if [[ ! -f ~/.config/nvim/lua/plugins/theme.lua ]]; then
  echo "No config to update"
  exit 1
fi

cp $1 ~/.config/nvim/lua/plugins/theme.lua

echo "Set neovim theme"
