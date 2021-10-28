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

# Find the installers and run them iteratively
info "running update scripts"
for installer in $(find . -name update.sh -not -path './update.sh')
do 
  info "running update script ${installer}"
  sh -c "${installer}"
  success "finished running update script ${installer}"
done
success "finished update scripts"

success "update finished!"

