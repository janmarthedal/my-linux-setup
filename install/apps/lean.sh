cd /tmp
curl -O https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh
sh elan-init.sh -y --no-modify-path
rm elan-init.sh
cd -

cp ~/.local/share/my-linux-setup/configs/lean/*.sh ~/.config/my-linux-setup/bash/rc/
