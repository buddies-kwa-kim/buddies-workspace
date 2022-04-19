#!/usr/bin/env bash
  
function print_sep {
  printf "\n\n"
  echo "###############################################################################"
  echo "$1"
  echo "###############################################################################"
}
  
echo "Make sure you've already added your github certs and config to the certs folder"
echo "Make sure you have added any github repos to be cloned to cloneRepos.sh"
read -p "Press any key to continue or ctrl-c to quit and do the steps above... " -n1 -s

# Inputs
print_sep "Email address and name for git"
echo "Please enter your email address for git"
read GIT_H_EMAIL_ADDRESS
echo "GIT_H_EMAIL_ADDRESS is set to $GIT_H_EMAIL_ADDRESS"
echo "Please enter your name for git"
read GIT_H_NAME
echo "GIT_H_NAME is set to $GIT_H_NAME"
print_sep "Github API token for Homebrew"
echo "Please enter your Github API token"
read HOMEBREW_GITHUB_API_TOKEN

print_sep "Getting sudo"
# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
print_sep "Checking OS"
if [ "$(uname)" = "Darwin" ]; then
  echo "Running Mac OS setup."
  echo "Brew will ask you for a github login, you may be asked for sudo also."
  source ./mac/mac-setup.sh
else
  # assume linux wsl on windows
  echo "Running linux setup."
  source ./wsl-ubuntu/windows-wsl-setup.sh
fi



# configure git
print_sep "Configure git"
source ./git-config.sh

# docker
print_sep "Setting host"
replaceLine="127.0.0.1 host.docker.internal"
if grep --quiet "$replaceLine" /etc/hosts; then
 echo "Docker host already added to /etc/hosts"
else
   echo "Adding Docker host to /etc/hosts"
    sudo -- sh -c -e "echo '$replaceLine' >> /etc/hosts";
fi

# Install vscode extensions
print_sep "Installing vscode extensions..."
source ./vscode-extensions.sh

# Copy ssl certs 
print_sep "Copying ssl certs from certs/* to ~/.ssh"
source ./certs/installCerts.sh

# Clone project repos
print_sep "Cloning repos to ~/personal-projects"
source ./cloneRepos.sh

print_sep "Finished all - DON'T FORGET THESE MANUAL STEPS"

echo "Configure homeshick and your dotfiles to use your own repo with the following commands:"
echo "homeshick clone buddies-kwa-kim/workspace-scripts"
echo "homeshick link workspace-scripts"
echo "homeshick refresh workspace-scripts"

printf "\n"
echo "Set your DNS to 8.8.8.8 to stop DNS lookup errors"
echo "Add an npm token to the ~/.npmrc that was created if publishing from this machine"
echo "use ssh-add -K ~/.ssh/[your-private-key] to permenantly add private keys to keychain/ssh-agent"
#echo "Open beyond compare and install cli tools if using beyond compare"
#echo "Install one note here or the app store: https://www.onenote.com/download"
printf "\n"
echo "Restart the machine!"
