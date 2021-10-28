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

# Install Brewfile
info "installing from Brewfile"
brew bundle --file Brewfile
success "installed from Brewfile"

# Find the installers and run them iteratively
info "running installers"
for installer in $(find . -name install.sh -not -path './install.sh')
do 
  info "running installer ${installer}"
  sh -c "${installer}"
  success "finished running installer ${installer}"
done
success "finished running installers"

success "install finished!"

