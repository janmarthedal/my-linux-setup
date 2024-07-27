sudo apt install -y fd-find xclip

cd /tmp
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -xzvf nvim-linux64.tar.gz -C ~/.local
ln -sf ~/.local/nvim-linux64/bin/nvim ~/.local/bin/nvim
rm nvim-linux64.tar.gz
cd -

if [ ! -d "$HOME/.config/nvim" ]; then
  git clone git@github.com:janmarthedal/kickstart.nvim ~/.config/nvim
fi
