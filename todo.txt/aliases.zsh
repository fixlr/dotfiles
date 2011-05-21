# todo.sh finger savers
function t() { 
  if [ $# -eq 0 ]; then
    todo.sh ls
  else
    todo.sh $*
  fi
}

alias tp='todo.sh -+ ls'
alias tpc='todo.sh -@ -+ ls'
alias tc='todo.sh -@ ls'
alias n='t lsp a'
