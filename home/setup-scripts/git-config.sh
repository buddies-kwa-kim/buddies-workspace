#!/usr/bin/env bash

# Add git code review commands
git config --global alias.cr-master '!git difftool --dir-diff origin/master..$1'
git config --global alias.cr-main '!git difftool --dir-diff origin/main..$1'

# Setup git
git config --global user.name "$GIT_H_NAME"
git config --global user.email "$GIT_H_EMAIL_ADDRESS"
git config --global alias.cm 'commit -m'
git config --global alias.cp 'cherry-pick -x'
git config --global alias.d 'diff'
git config --global alias.dc 'diff --cached'
git config --global alias.dlast 'diff HEAD^'
git config --global alias.l "log --graph -n 20 --pretty=format:'%C(yellow)%h%C(cyan)%d%Creset %s %C(green)- %an, %cr%Creset'"
git config --global alias.ll "log --stat --abbrev-commit"
git config --global alias.ln "log --graph -n 20 --pretty=format:'%C(yellow)%h%C(cyan)%d%Creset %s %C(green)- %an, %cr%Creset' --name-status"
git config --global alias.lp "log --oneline -n 20 -p"
git config --global alias.ls "log --stat --abbrev-commit -n 1" # display previous log
git config --global alias.st 'status -s'
git config --global alias.unstage 'reset HEAD --'
git config --global alias.uncommit 'reset --soft HEAD^'
# set fast autocorrect
git config --global help.autocorrect 2
# only push current branch
git config --global push.default current
git config --global web.browser "chrome"

git config --global pull.ff only
git config --global color.ui true
git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.func       "146 bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"

# Preset global git config for beyond compare
git config --global diff.tool bc3
git config --global difftool.bc3.trustExitCode true
git config --global merge.tool bc3
git config --global mergetool.bc3.trustExitCode true
