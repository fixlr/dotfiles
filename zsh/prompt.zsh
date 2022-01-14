git_branch() {
  echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if [ ! -d ".git" ]
  then
    echo ""
  else
    st=$(git status 2>/dev/null | tail -n 1)
    if [[ $st == "nothing to commit, working tree clean" ]]
    then
      echo "%{\033[1;38m%}$(git_prompt_info)%{\033[0m%}"
    else
      echo "%{\033[1;31m%}$(git_prompt_info)%{\033[0m%}"
    fi
  fi
}

shell_arch() {
  if [[ $(/usr/bin/arch) == "i386" ]]; then
    echo "#"
  else
    echo ""
  fi
}

git_prompt_info () {
 ref=$(git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

project_name () {
  name=$(pwd | awk -F'Projects/' '{print $2}' | awk -F/ '{print $1}')
  echo $name
}

project_name_color () {
  echo "%{\e[0;35m%}${name}%{\e[0m%}"
}

unpushed () {
  git cherry -v origin/$(git_branch) 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo "%{\e[0;32m%}+%{\e[0m%}"
  fi
}

set_prompt () {
  if [ -d "$PWD/.git" ]; then
    export PROMPT=$'$(shell_arch) %{\e[0;36m%}%1/%{\e[0m%} ($(project_name_color)$(git_dirty)$(need_push)) > '
  else
    export PROMPT=$'$(shell_arch) %{\e[0;36m%}%1/%{\e[0m%} > '
  fi
}

set_window_title () {
  echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"
}

precmd() {
  set_prompt
  set_window_title
}
