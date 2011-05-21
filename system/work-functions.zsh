# so many SUNY libraries, so little time...
function suny() {
  dig $1.sunyconnect.suny.edu | \
  egrep -o -m 1 '(saranac|delaware|seneca)\.sunyconnect\.suny\.edu'
}
