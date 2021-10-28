#!/bin/zsh

VSCODE_SETTINGS_PATH=$HOME/Library/Application Support/Code/User
if ! [ -d $VSCODE_SETTINGS_PATH ]; then
  mkdir -r $VSCODE_SETTINGS_PATH
fi

ln -sf $HOME/.dotfiles/vscode/settings.json $VSCODE_SETTINGS_PATH/settings.json

code --install-extension bierner.markdown-mermaid
code --install-extension bmd.stm32-for-vscode
code --install-extension dan-c-underwood.arm
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension hediet.vscode-drawio
code --install-extension marus25.cortex-debug
code --install-extension marus25.cortex-debug-dp-stm32f4
code --install-extension ms-vscode.cpptools
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension yzane.markdown-pdf
code --install-extension yzhang.markdown-all-in-one
