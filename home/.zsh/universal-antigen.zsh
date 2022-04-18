#!/usr/bin/env bash

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle npm
antigen bundle node
antigen bundle macos
antigen bundle thefuck
antigen bundle z
antigen bundle git
antigen bundle isodate
antigen bundle history
antigen bundle command-not-found

# cloud
antigen bundle aws
antigen bundle terraform
antigen bundle docker
antigen bundle kubectl
antigen bundle pyenv

#  adds a lwd function to jump to the last working directory.
antigen bundle last-working-dir
# autojump is a faster way to navigate your filesystem. It works by maintaining a database of the directories you use the most from the command line.
antigen bundle autojump

# webdev
antigen bundle mafredri/zsh-async


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
