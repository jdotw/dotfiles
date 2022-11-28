#!/bin/zsh

if [[ $DOTFILES_MINIMAL == 1 ]]; then
  echo "Skipping licenses/install.sh due to minimal setup..."
  exit 0
fi

DAISYDISK_PATH=~/Library/Application\ Support/DaisyDisk
if ! [ -d $DAISYDISK_PATH ]; then
  mkdir $DAISYDISK_PATH
fi
cp ~/.dotfiles/licenses/daisydisk $DAISYDISK_PATH/License.DaisyDisk
