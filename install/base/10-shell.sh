[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
mkdir -p ~/.config/my-linux-setup/bash/rc
cp ~/.local/share/my-linux-setup/configs/bash/bashrc ~/.bashrc
cp ~/.local/share/my-linux-setup/configs/bash/rc/*.sh ~/.config/my-linux-setup/bash/rc/

# [ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# cp ~/.local/share/my-linux-setup/configs/inputrc ~/.inputrc
