#!/usr/bin/env bash

print_sep "Setting up mac"
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

#install rosetta
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

source ./mac/install-brew-packages.sh
source ./mac/set-default-app-filetypes.sh
source ./mac/set-default-macos.sh
source ./mac/set-vscode-settings.sh


print_sep "Mac setup complete"
echo "Setup chrome as email handler in mail"
echo "Press Command + Shift + . to show all files in finder"
echo "Now open all the apps on Mac one by one to allow them to execute"
