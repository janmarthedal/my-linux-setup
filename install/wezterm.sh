# Home: https://wezfurlong.org/wezterm/
# Installation: https://wezfurlong.org/wezterm/install/linux.html

curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

sudo apt update
sudo apt install -y wezterm

cp ~/.local/share/my-linux-setup/configs/wezterm.lua ~/.wezterm.lua
