# sudo apt remove rustc
# sudo apt auto-remove

cd /tmp
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup.sh
sh rustup.sh -y
rm rustup.sh
cd -

# updates .bashrc
