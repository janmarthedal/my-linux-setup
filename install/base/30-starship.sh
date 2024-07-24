cd /tmp
curl -sS https://starship.rs/install.sh >install-starship.sh
sh install-starship.sh -y
rm install-starship.sh
cd -

mkdir -p ~/.config
cp ~/.local/share/my-linux-setup/configs/starship.toml ~/.config/starship.toml

cp ~/.local/share/my-linux-setup/configs/starship/*.sh ~/.config/my-linux-setup/bashrc/
