cd /tmp
curl -fLo zed.tar.gz https://zed.dev/api/releases/stable/latest/zed-linux-x86_64.tar.gz
mkdir -p ~/.local
# extract zed to ~/.local/zed.app/
tar -xvf zed.tar.gz -C ~/.local
# link the zed binary to ~/.local/bin (or another directory in your $PATH)
ln -sf ~/.local/zed.app/bin/zed ~/.local/bin/zed
rm zed.tar.gz
cd -

cp ~/.local/zed.app/share/applications/zed.desktop ~/.local/share/applications/zed.desktop
sed -i "s|Icon=zed|Icon=$HOME/.local/zed.app/share/icons/hicolor/512x512/apps/zed.png|g" ~/.local/share/applications/zed.desktop
sed -i "s|Exec=zed|Exec=$HOME/.local/zed.app/libexec/zed-editor|g" ~/.local/share/applications/zed.desktop
