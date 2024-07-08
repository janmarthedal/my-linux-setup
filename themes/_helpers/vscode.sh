#!/bin/bash

if [[ -z $1 ]]; then
  echo "Missing theme name"
  exit 1
fi

if [[ ! -f ~/.config/Code/User/settings.json ]]; then
  echo "No config file to update"
  exit 1
fi

if [[ -n $2 ]]; then
  code --install-extension $2 >/dev/null
fi

sed -i "s/\"workbench.colorTheme\": \".*\"/\"workbench.colorTheme\": \"$1\"/g" ~/.config/Code/User/settings.json

echo "Set vscode color theme"
