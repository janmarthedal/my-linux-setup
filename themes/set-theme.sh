# THEME must be set

if [ -n "$THEME" ]; then
  THEME_DIR=$(echo $THEME | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

  if [ -d ~/.config/alacritty/theme.toml ]; then
    cp ~/.local/share/my-linux-setup/themes/$THEME_DIR/alacritty.toml ~/.config/alacritty/theme.toml
  fi
  if [ -d ~/.config/nvim/lua/plugins/theme.lua ]; then
    cp ~/.local/share/my-linux-setup/themes/$THEME_DIR/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
  fi
  if [ -f ~/.wezterm.lua ]; then
    sed -i "s/config.color_scheme =.*/config.color_scheme = \"$THEME\"/g" ~/.wezterm.lua
  fi

  source ~/.local/share/my-linux-setup/themes/$THEME_DIR/gnome.sh
  # source ~/.local/share/my-linux-setup/themes/$THEME/vscode.sh
fi
