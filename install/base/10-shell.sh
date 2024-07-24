[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak

mkdir -p ~/.config/my-linux-setup/bashrc

cat <<"EOF" >~/.bashrc
for script in ~/.config/my-linux-setup/bashrc/*.sh; do source $script; done
EOF

cp ~/.local/share/my-linux-setup/configs/bashrc/*.sh ~/.config/my-linux-setup/bashrc/

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/.local/share/my-linux-setup/configs/inputrc ~/.inputrc
