sudo apt remove -y rustc libstd-rust-dev

cd /tmp
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs >rustup.sh
sh rustup.sh -y --no-modify-path
rm rustup.sh
cd -

cp ~/.local/share/my-linux-setup/configs/rust/*.sh ~/.config/my-linux-setup/bashrc/
