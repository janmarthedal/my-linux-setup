pathadd() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="${PATH:+"$PATH:"}$1"
  fi
}

export MY_LINUX_SETUP_PATH="$HOME/.local/share/my-linux-setup"

# pathadd "$MY_LINUX_SETUP_PATH/bin"

pathadd "$HOME/.local/bin"
pathadd "/usr/local/sbin"
pathadd "/usr/local/bin"
pathadd "/usr/sbin"
pathadd "/usr/bin"
pathadd "/sbin"
pathadd "/bin"
