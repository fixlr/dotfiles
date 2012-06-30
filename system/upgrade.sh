current_path=`pwd`
echo "Upgrading dotfiles..."
( cd $DOTSRC && git pull origin master )
echo "Dotfiles have been updated and/or were already at their current version.\nRestart your terminal session."
cd $current_path
