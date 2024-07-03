rustup component add rust-analyzer

if [ ! -d "$HOME/.config/nvim" ]; then
  cp ~/.local/share/my-linux-setup/configs/rustaceanvim.lua ~/.config/nvim/lua/plugins/
fi
