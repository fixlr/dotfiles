alias gl='git pull --rebase --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %C(yellow)%d%Creset %s - %Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias flow='git flow'