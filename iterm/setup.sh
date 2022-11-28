if [[ $DOTFILES_MINIMAL == 1 ]]; then
  echo "Skipping iterm/setup.sh due to minimal setup..."
  exit 0
fi

cp ~/.dotfiles/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
