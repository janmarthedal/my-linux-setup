cd /tmp
curl -fLo dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2024.04.17_amd64.deb
sudo dpkg -i dropbox.deb
nautilus --quit
rm dropbox.deb
cd -

