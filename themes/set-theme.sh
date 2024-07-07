# THEME must be set

if [ -n "$THEME" ]; then
  THEME_SLUG=$(echo $THEME | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

  if [ -d ~/.config/alacritty/theme.toml ]; then
    cp ~/.local/share/my-linux-setup/themes/$THEME_SLUG/alacritty.toml ~/.config/alacritty/theme.toml
  fi
  if [ -d ~/.config/nvim/lua/plugins/theme.lua ]; then
    cp ~/.local/share/my-linux-setup/themes/$THEME_SLUG/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
  fi
  if [ -f ~/.wezterm.lua ]; then
    sed -i 's/config.color_scheme =.*/config.color_scheme = "$THEME"/g' ~/.wezterm.lua
  fi

  # source $~/.local/share/my-linux-setup/themes/$THEME/gnome.sh
  # source $~/.local/share/my-linux-setup/themes/$THEME/vscode.sh
fi
