#!/bin/bash

if [[ -z $1 ]]; then
  echo "Missing theme"
  exit 1
fi

if [[ ! -f ~/.config/alacritty/theme.toml ]]; then
  echo "No config file to update"
  exit 1
fi

cp $1 ~/.config/alacritty/theme.toml

echo "Set alacritty theme"
