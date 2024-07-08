#!/bin/bash

if [[ -z $1 ]]; then
  echo "Missing theme"
  exit 1
fi

if [[ ! -d $MY_LINUX_SETUP_PATH/themes/$1 ]]; then
  echo "Theme folder not found"
  exit 1
fi

for f in $MY_LINUX_SETUP_PATH/themes/$1/*.sh; do source $f; done
