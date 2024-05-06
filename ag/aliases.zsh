# Search for a list of files that match a pattern and open them in vim.
function agvim() {
  vim $(ag -l0 $*)
}

alias ag='ag --path-to-ignore ~/.agignore'
