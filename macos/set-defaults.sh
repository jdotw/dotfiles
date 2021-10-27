# Sets reasonable macOS defaults.
#
# Or, in other words, set shit how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Switch Keyboard Modifiers for External Keyboard (Steel Series Apex 7 TKL)
defaults -currentHost write -g com.apple.keyboard.modifiermapping.4152-5656-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>30064771299</integer><key>HIDKeyboardModifierMappingSrc</key><integer>30064771302</integer></dict>'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.4152-5656-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>30064771303</integer><key>HIDKeyboardModifierMappingSrc</key><integer>30064771298</integer></dict>'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.4152-5656-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>30064771298</integer><key>HIDKeyboardModifierMappingSrc</key><integer>30064771303</integer></dict>'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.4152-5656-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>30064771302</integer><key>HIDKeyboardModifierMappingSrc</key><integer>30064771299</integer></dict>'

# Copy Dock preferences
cp ~/.dotfiles/macos/com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist
killall -9 Dock

