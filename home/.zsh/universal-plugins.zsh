#!/usr/bin/env bash


mkdir -p $HOME/.antigen/
# Load the oh-my-zsh's library.
antigen use oh-my-zsh


# Bundles from the default repo (robbyrussell's oh-my-zsh).
## does not require brew install
antigen bundle isodate
antigen bundle history
antigen bundle last-working-dir
antigen bundle sudo
antigen bundle macos

## require brew install
antigen bundle ripgrep
antigen bundle autojump
antigen bundle zsh-navigation-tools
antigen bundle fzf

### cloud
antigen bundle aws
antigen bundle terraform
antigen bundle docker
antigen bundle kubectl
antigen bundle kubectx
antigen bundle helm

### dev
antigen bundle git
antigen bundle github
antigen bundle pyenv
antigen bundle nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
# Syntax highlighting bundle.
antigen bundle unixorn/git-extra-commands@main
# Load the theme.
antigen bundle sindresorhus/pure@main

# Tell Antigen that you're done.
antigen apply
