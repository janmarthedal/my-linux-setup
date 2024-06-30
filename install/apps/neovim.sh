sudo apt install -y neovim

if [ ! -d "$HOME/.config/nvim" ]; then
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	echo "** LazyVim ** It is recommended to run :LazyHealth after installation."
	echo "** LazyVim ** This will load all plugins and check if everything is working correctly."
fi
