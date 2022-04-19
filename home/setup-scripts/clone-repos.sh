#!/usr/bin/env bash

print_sep "Cloning repos"
# super simple way to clone some repos
# uncomment destination and add repos below! e.g.
current_dir=$(pwd)
mkdir ~/personal-projects
cd ~/personal-projects
git clone https://github.com/buddies-kwa-kim/buddies-app
cd $current_dir
