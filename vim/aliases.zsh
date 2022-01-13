# Search for a list of files that match a pattern and open them in vim.
function agvim() {
  ag -l $* | xargs -o vim
}
