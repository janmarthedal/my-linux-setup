cd /tmp
wget -O zellij.tar.gz "https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz"
tar -xf zellij.tar.gz zellij
sudo install zellij /usr/local/bin
rm zellij.tar.gz zellij
cd -

mkdir -p ~/.config/zellij
[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/my-linux-setup/configs/zellij.kdl ~/.config/zellij/config.kdl
