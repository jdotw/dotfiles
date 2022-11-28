#!/usr/bin/env bash
#
# bootstrap installs things.

cd "$(dirname "$0")"
DOTFILES_ROOT=$(pwd -P)

set -e

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

# This must be run because the zsh config
# wont be present yet
if [ -e "/opt/homebrew/bin/brew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
if [ -e "/usr/local/bin/brew" ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Install Brewfile
info "installing from Brewfile"
brew bundle --file Brewfile
success "installed from Brewfile"

# Find the installers and run them iteratively
export DOTFILES_MINIMAL=1
info "running installers"
for installer in $(find . -name install.sh -not -path './install.sh')
do 
  info "running installer ${installer}"
  sh -c "${installer}"
  success "finished running installer ${installer}"
done
success "finished running installers"

success "install finished!"

#./setup.sh
