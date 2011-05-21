# Add an ls and pwd to the builtin cd
function cd() {
  builtin cd $*
  pwd
  ls
}

# so many SUNY libraries, so little time...
function suny() {
  dig $1.sunyconnect.suny.edu | \
  egrep -o -m 1 '(saranac|delaware|seneca)\.sunyconnect\.suny\.edu'
}

# todo.sh finger savers
alias t='todo.sh'
alias tp='todo.sh -+ ls'
alias tpc='todo.sh -@ -+ ls'
alias tc='todo.sh -@ ls'

