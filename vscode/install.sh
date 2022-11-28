#!/bin/zsh

if [[ $DOTFILES_MINIMAL == 1 ]]; then
  echo "Skipping vscode/install.sh due to minimal setup..."
  exit 0
fi

install_extension () {
  code --install-extension $1 > /dev/null
}

install_extension bierner.markdown-mermaid
install_extension bmd.stm32-for-vscode
install_extension dan-c-underwood.arm
install_extension dsznajder.es7-react-js-snippets
install_extension eamodio.gitlens
install_extension esbenp.prettier-vscode
install_extension hediet.vscode-drawio
install_extension marus25.cortex-debug
install_extension marus25.cortex-debug-dp-stm32f4
install_extension ms-vscode.cpptools
install_extension shd101wyy.markdown-preview-enhanced
install_extension yzane.markdown-pdf
install_extension yzhang.markdown-all-in-one
