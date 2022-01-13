# Initialize the default docker environment
if which docker-machine > /dev/null
then
  eval $(docker-machine env default)
fi
