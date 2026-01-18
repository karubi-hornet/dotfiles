#!/bin/sh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# ====================
#
# Base
#
# ====================
# Disable auto-capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# ====================
#
# Finder
#
# ====================
# Disable animation
defaults write com.apple.finder DisableAllAnimations -bool true

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show files with all extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Display the status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Display the path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display drives on Desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
killall Finder

# Not create .DS_Store files on network storage
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Not create .DS_Store files on USB memory
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# --- Security ---
# Enable firewall
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1

# ====================
#
# Dock
#
# ====================

# Enable "Auto-hide"
defaults write com.apple.dock autohide -bool true
# Hide recent applications
defaults write com.apple.dock show-recents -bool false
# Disable animation at application launch
defaults write com.apple.dock launchanim -bool false

killall Dock

# --- SystemUIServer ---
# Display date, day, and time in the menu bar
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d HH:mm:ss'
# Display battery level in the menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# No drop shadow on screenshots
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer

# --- Trackpad ---
# Click when tapped
defaults write -g com.apple.mouse.tapBehavior -int 1
# Mouse speed
defaults write -g com.apple.mouse.scaling 5
# Mission control & expose with three fingers
defaults write com.apple.dock showMissionControlGestureEnabled -bool true
defaults write com.apple.dock showAppExposeGestureEnabled -bool true
defaults write com.apple.dock showDesktopGestureEnabled -bool true
defaults write com.apple.dock showLaunchpadGestureEnabled -bool true

# ---　TextEdit　---
# Rich text to plain text
defaults write com.apple.TextEdit RichText -int 0

printf "\033[0;32mMacOS setting is done!\033[0m\n"