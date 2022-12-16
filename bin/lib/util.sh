has() {
  hash "$1" 2> /dev/null
}

try() {
  if "$@"; then
    return
  fi

  local res=$?

  if compgen -e QUIET | grep QUIET && [[ $QUIET = yes ]]; then
    return "$res"
  fi

  die "there was a problem running %s" "$1"
  return "$res"
}

is-a() {
  [[ $1 = *."$2" ]] && head -1 "$1" | grep -q '^#!.*'"${3-"$2"}"'$'
}

# The os variable is used by another library.
# shellcheck disable=SC2034
case $OSTYPE in
darwin*)
  os=darwin
  ;;
linux*)
  os=linux
esac
