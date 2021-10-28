#!/usr/bin/env bash
#
# bootstrap installs things.

cd "$(dirname "$0")"
DOTFILES_ROOT=$(pwd -P)

set -e

echo ''

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

# Install software updates
info "installing macOS software updates"
sudo softwareupdate -i -a
success "installed macOS software updates"

# Upgrade homebrew
info "updating homebrew"
brew update
success "homebrew updated"

success "update finished!"

