# My Linux Setup

## Prerequisites

Make sure to update the list of available packages
```
sudo apt update
```
Install git
```
sudo apt install git
```
To clone this repository, make sure you have [generated an SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent),
```
ssh-keygen -t ed25519 -C "jan@janmr.com"
```
and added it in your github settings.

Now clone this repository into `~/.local/share/my-linux-setup`.

## Key bindings

- ALT+Space: Window menu
- Shift+Alt+1: New Chrome window
- Shift+Alt+2: New Wezterm window
- Shift+F11: Toggle full-screen

## Mise

### Node.js

The following installs the latest version of node-20.x and makes it the global default:
```sh
mise use -g node@20
```

The following installs the latest LTS version of node and makes it the global default:
```sh
mise use -g node@lts
```

### Python

The following installs the latest version of python-3.11.x and makes it the global default:
```sh
mise use -g python@3.13
```

### Yarn

```sh
mise use -g yarn@4.5.1
```

## Post install

Remember to set your git credentials:
```
git config --global user.name "Jan Marthedal Rasmussen"
git config --global user.email "jan@janmr.com"
```
