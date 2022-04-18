
# notes
coding learn
- os vs programming languages vs programming frameworks
- linux commands
- |, ; , &&, tee, >, >>,
- filesystems: cd, ., .., mkdir, rm -rf, full path vs relative, mv, pwd, find, ls, ll
- files: cat, tail, less, touch, more, source, tar, diff, wc, EOF
- editor: touch, vi, nano
- strings: grep, awsk, sed, sort, echo regex
- env vars: set, export, alias, acripts
- iam: whoami, chmod, sudo su, exit
- commands: man, —help, history
- processes: ps, kill, top, shutdown now
- network: ssh, scp, curl, wget, dig, whois, ifconfig, hostname -i
- terminal shortcuts, ctrl c d e a f
- editor: vim, nano
- tools
- installation steps
- shell: zsh vs bash vs shell, ohmyzsh, $SHELL, chsh
- 
- fzf
- better grep = ripgrep
- iterm2: shortcuts, themes, 
- smart autocompletion = fig
- better cat = bat
- better ls = exa
- aliases
- package mamager: brew, apt, yum, pip,  npm antigen
- docker, kubectl, kubectx, terraform,
- pyenv, 
- vscode, extensions: intellegi
- aws cli
- node, react
- web2
- web3
- data science
- git branch strategies
- markdowns
# Installation guide
- git, zsh, ohmyzsh
- VS code, extensions
- linux aliases
- ohmyzsh, zshrc plugins, themes

# Windows

## WSL Ubuntu 18.04

- https://www.microsoft.com/en-us/p/ubuntu-1804-lts/9n9tngvndl3q?SilentAuth=1&wa=wsignin1.0
  https://docs.microsoft.com/en-us/windows/wsl/install

```powershell
  wsl --install
  
```
```bash
  wsl
  sudo apt-get update
  ln -s /mnt/c/Users/lk_le/Downloads Downloads
  #mkdir $HOME/utils
```

## Graphical Apps
### Windows Terminal
- https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab
- color scheme = One Half Dark

### VS Code
- https://code.visualstudio.com/docs/remote/wsl
- https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack

### Docker desktop
- https://docs.docker.com/desktop/windows/wsl/

# Mac OS
```
xcode-select --install
```

# Package Manager (Homebrew)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# LinuxBrew only
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc
```

## brew 

## iterm2
```
# MaC OS only (not WSL)
brew cask install iterm2 
```
## VS Code
```
brew cask install visual-studio-code
```

# Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
## git
```bash
#sudo apt-get install git
brew install git
```
## zsh
```bash
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```vim
# ~/.zshrc
plugins=(themes,git,aliases,common-aliases,history,aws,gcloud,docker,kubectl,kubectx,pyenv,terraform)
```

## docker
- https://docs.docker.com/desktop/windows/wsl/

## kubectl
- https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/

## terraform
- https://learn.hashicorp.com/tutorials/terraform/install-cli

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
```
### chtf
- https://github.com/Yleisradio/chtf

```bash
cd $HOME/utils
curl -L -o chtf-2.1.1.tar.gz https://github.com/Yleisradio/chtf/archive/v2.1.1.tar.gz
tar -xzvf chtf-2.1.1.tar.gz
cd chtf-2.1.1/
make install
echo "1.0.11" > $HOME/.terraform-version
~/.zshrc
######################################################################
# chtf
if [[ -f "$HOME/share/chtf/chtf.sh" ]]; then
    source "$HOME/share/chtf/chtf.sh"
fi
if [[ -f "$HOME/.terraform-version" ]]; then
    chtf "$(< "$HOME/.terraform-version")"
fi
```

### terragrunt

### uninstall


## awscli
### install

### uninstall
## gcloud
### install
https://cloud.google.com/sdk/docs/install#linux
```bash
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-381.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-381.0.0-linux-x86_64.tar.gz -C $HOME
$HOME/google-cloud-sdk/install.sh
sudo mkdir /usr/share/google-cloud-sdk/
sudo cp $HOME/google-cloud-sdk/completion.bash.inc /usr/share/google-cloud-sdk/completion.zsh.inc
```
uninstall
- https://cloud.google.com/sdk/docs/uninstall-cloud-sdk
```bash
rm -rf /usr/share/google-cloud-sdk/
```
Install common



Install zsh, ohmyzsh

```
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
upgrade_oh_my_zsh
```

Restart a new iterm2 terminal

```
echo $SHELL
```

https://medium.com/ayuth/iterm2-zsh-oh-my-zsh-the-most-power-full-of-terminal-on-macos-bdb2823fb04c

- Themes
- Plugins
  https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins

# Web2 dev

- amplify
- graphql
- rest
- django, flask
- express

# Web3 developpment

- remix
- js, nextjs
- react
- node
- aliases

# Devops

- python, venv
- docker, packer, ansible
- kubectl, kubens,kubectx, helm, kind
- terraform, chtf
- awscli, gcloud,
- aliases

# datascience

- python panda numby sciktlearn tensorflow
