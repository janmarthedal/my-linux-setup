sudo apt install -y neovim

if [ ! -d "$HOME/.config/nvim" ]; then
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  # Disable update notification popup in starter config
  sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua
  # Set color theme
  cp ~/.local/share/my-linux-setup/themes/catppuccin-latte/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

  echo "** LazyVim ** It is recommended to run :LazyHealth after installation."
  echo "** LazyVim ** This will load all plugins and check if everything is working correctly."
fi
