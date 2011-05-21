#!/bin/sh

function _current_epoch() {
  echo $(($(date +%s) / 60 / 60 / 24))
}

function _update_dotfiles_update() {
  echo "LAST_EPOCH=$(_current_epoch)" > ~/.dotfiles_update
}

if [ -f ~/.dotfiles_update ]
then
  . ~/.dotfiles_update

  if [[ -z "$LAST_EPOCH" ]]; then
    _update_dotfiles_update && return 0;
  fi

  epoch_diff=$((${_current_epoch} - $LAST_EPOCH))
  if [ $epoch_diff -gt 6 ]
  then
    echo "[dotfiles] Would you like to check for updates?"
    echo "Type Y to update your dotfiles: \c"
    read line
    if [ "$line" = Y ] || [ "$line" = y ]
    then
      /bin/sh $ZSH/system/upgrade.sh
    fi
  fi
fi

_update_dotfiles_update