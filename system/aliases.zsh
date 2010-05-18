# Add an ls and pwd to the builtin cd
function cd() {
  builtin cd $*
  pwd
  ls
}

# todo.sh finger savers
alias t='todo.sh'
alias tp='todo.sh -+ ls'
alias tpc='todo.sh -@ -+ ls'
alias tc='todo.sh -@ ls'