#!/bin/bash

if [[ -z $1 ]]; then
  echo "Missing theme"
  exit 1
fi

if [[ ! -f ~/.wezterm.lua ]]; then
  echo "No config to update"
  exit 1
fi

sed -i "s/config.color_scheme =.*/config.color_scheme = \"$1\"/g" ~/.wezterm.lua

echo "Set wezterm color scheme"
