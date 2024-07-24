sudo apt install -y neovim

if [ ! -d "$HOME/.config/nvim" ]; then
  git clone git@github.com:janmarthedal/kickstart.nvim ~/.config/nvim
fi
