#!/bin/zsh

DAISYDISK_PATH=~/Library/Application\ Support/DaisyDisk
if ! [ -d $DAISYDISK_PATH ]; then
  mkdir $DAISYDISK_PATH
fi
cp ~/.dotfiles/licenses/daisydisk $DAISYDISK_PATH/License.DaisyDisk
