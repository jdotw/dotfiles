#!/bin/zsh

if [[ $DOTFILES_MINIMAL == 1 ]]; then
  echo "Skipping aws/install.sh due to minimal setup..."
  exit 0
fi

brew install awscli
npm install -g aws-cdk
