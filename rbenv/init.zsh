# Use homebrew's rbenv
export RBENV_ROOT=$HOMEBREW_PREFIX/var/rbenv

# Enable completion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
