rustup component add rust-analyzer

if [[ -d $HOME/.config/nvim ]]; then
  cp $MY_LINUX_SETUP_PATH/configs/rustaceanvim.lua ~/.config/nvim/lua/custom/plugins/
fi
