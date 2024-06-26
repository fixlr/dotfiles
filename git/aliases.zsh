alias gl='OVERCOMMIT_DISABLE=1 git pull --rebase --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %C(yellow)%d%Creset %s - %Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gdc='git diff --cached'
alias gau='git add -u && git status'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias gss='git show --stat'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gri='git rebase -i origin/$(git default-branch)'
alias qgit="git"
