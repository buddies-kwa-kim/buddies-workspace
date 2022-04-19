# detect the machine we're running on
# assume linux is wsl on windows (although any ubuntu should be ok)
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

set -o noclobber

print_sep "Load envvars and aliases"
# load the universal env vars
[[ -f ~/.zsh/universal-envvars.zsh ]] && source ~/.zsh/universal-envvars.zsh
# now load the aliases and and other customizations
[[ -f ~/.zsh/universal-aliases.zsh ]] && source ~/.zsh/universal-aliases.zsh

# Antigen: load antigen plugin manager
print_sep "Load antigen"
if [ "$machine" = "Mac" ]; then
  source $(brew --prefix)/share/antigen/antigen.zsh
else
  source ~/antigen.zsh
fi

# Now load our custom plugins and config for antigen
[[ -f ~/.zsh/universal-antigen.zsh ]] && source ~/.zsh/universal-antigen.zsh
# Init nvm and pyenv
[[ -f ~/.zsh/universal-setup-version-managers.zsh ]] && source ~/.zsh/universal-setup-version-managers.zsh

if [ "$machine" = "Mac" ]; then
  source ~/.zsh/mac-aliases.zsh
  # load fzf autocompletion and key bindings
  source ~/.zsh/mac-fzf.zsh
else
  source ~/.zsh/wsl-aliases.zsh
  source ~/.zsh/wsl-startagent.zsh
  source "$HOME/.homesick/repos/homeshick/homeshick.sh" # homebrew does this on mac
fi
