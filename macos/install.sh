#!/usr/bin/env bash

# close system preferences to keep it from overriding stuff
osascript -e 'tell application "System Preferences" to quit'

# disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Show the ~/Library folder.
chflags nohidden ~/Library

# automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# translucent dock icons for hidden apps
defaults write com.apple.dock showhidden -bool true

# hide recent apps
defaults write com.apple.dock show-recents -bool false

# set the icon size of Dock items
defaults write com.apple.dock tilesize -int 50

# disable keyboard press and hold popup
defaults write -g ApplePressAndHoldEnabled -bool false

# fast keyboard repeat rate
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 5

# expand print panel by default
defaults write -g PMPrintingExpandedStateForPrint -bool true
defaults write -g PMPrintingExpandedStateForPrint2 -bool true

# expand save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

# disable warning when changing file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# disable text autocomplete when typing
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
