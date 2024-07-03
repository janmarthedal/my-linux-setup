sudo apt install -y build-essential curl libffi-dev libffi8 libgmp-dev libgmp10 libncurses-dev pkg-config

curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | \
  BOOTSTRAP_HASKELL_NONINTERACTIVE=1 \
  BOOTSTRAP_HASKELL_GHC_VERSION=latest \
  BOOTSTRAP_HASKELL_CABAL_VERSION=latest \
  BOOTSTRAP_HASKELL_INSTALL_STACK=1 \
  BOOTSTRAP_HASKELL_INSTALL_HLS=1 \
  BOOTSTRAP_HASKELL_ADJUST_BASHRC= \
  sh

cp ~/.local/share/my-linux-setup/configs/haskell/*.sh ~/.config/my-linux-setup/bash/rc/
