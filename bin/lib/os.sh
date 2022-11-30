# The os variable is used by another library.
# shellcheck disable=SC2034
case $OSTYPE in
darwin*)
  os=darwin
  ;;
linux*)
  os=linux
esac
