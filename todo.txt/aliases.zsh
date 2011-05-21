# todo.sh finger savers
function t() { 
  if [ $# -eq 0 ]; then
    todo.sh ls
  else
    todo.sh $*
  fi
}

alias t='todo.sh'
alias tp='todo.sh -+ ls'
alias tpc='todo.sh -@ -+ ls'
alias tc='todo.sh -@ ls'
alias n='t ls +next'
