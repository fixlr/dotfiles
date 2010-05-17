# Add an ls and pwd to the builtin cd
function cd() {
  builtin cd $*
  pwd
  ls
}

alias t='todo.sh'