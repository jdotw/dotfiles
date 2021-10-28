#!/bin/zsh

VSCODE_SETTINGS_PATH=$HOME/Library/Application\ Support/Code/User
if ! [ -d $VSCODE_SETTINGS_PATH ]; then
  mkdir -r $VSCODE_SETTINGS_PATH
fi

ln -sf $HOME/.dotfiles/vscode/settings.json $VSCODE_SETTINGS_PATH/settings.json

