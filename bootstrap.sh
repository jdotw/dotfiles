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

install_rosetta () {
  if ! [ -f /Library/Apple/System/Library/Receipts/com.apple.pkg.RosettaUpdateAuto.plist ]
  then
    info "installing rosetta"
    sudo softwareupdate --install-rosetta --agree-to-license
    success "installed rosetta"
  else 
    success "rosetta already installed"
  fi
}

install_homebrew() {
  # Check for Homebrew
  if test ! $(which brew)
  then
    info "installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    success "installed homebrew"
  else 
    success "homebrew already installed"
  fi

  exit 0
}

install_rosetta
install_homebrew

success "bootstrap completed!"
