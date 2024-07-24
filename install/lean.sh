cd /tmp
curl -O https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh
sh elan-init.sh -y --no-modify-path
rm elan-init.sh
cd -

cp ~/.local/share/my-linux-setup/configs/lean/*.sh ~/.config/my-linux-setup/bashrc/

if [[ -d $HOME/.config/nvim ]]; then
  cp $MY_LINUX_SETUP_PATH/configs/lean/neovim.lua ~/.config/nvim/lua/plugins/lean.lua
fi
