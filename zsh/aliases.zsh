# Add an ls and pwd to the builtin cd
function cd() {
  builtin cd $*
  pwd
  ls
}

alias reload!='. ~/.zshrc'

alias man='tldr'
alias mannn='/usr/bin/man'
alias ft='open -a FoldingText.app'
alias j='jobs'
