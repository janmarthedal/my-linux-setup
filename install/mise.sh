# These are necessary for building python
sudo apt install -y \
  libffi-dev libreadline-dev libncurses-dev \
  libbz2-dev libsqlite3-dev tk-dev liblzma-dev

curl https://mise.run | sh

cp ~/.local/share/my-linux-setup/configs/mise/*.sh ~/.config/my-linux-setup/bashrc/
