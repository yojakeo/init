#!/bin/sh
cp -rf ~/settings/mac_settings ~/Library/Preferences;
defaults write -g NSWindowDarkChocolate -bool TRUE;
cp ~/settings/Solarized\ \(dark\).sublime-color-scheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/;
defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0.2;
defaults write .GlobalPreferences com.apple.mouse.scaling -1;
defaults write .GlobalPreferences com.apple.scrollwheel.scaling -1;
killall Dock;