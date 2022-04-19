#!/usr/bin/env bash

print_sep "Configuring vscode settings"
mkdir -p "$HOME/Library/Application Support/Code/User"
cp ./mac/vscode.settings.json "$HOME/Library/Application Support/Code/User/settings.json"
