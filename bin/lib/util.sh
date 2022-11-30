has() {
  hash "$1" 2> /dev/null
}

boilerplate() {
  local dep{s,}

  if is_ci; then
    deps+=("${ci_deps[@]}")
  else
    deps+=("${local_deps[@]}" tput)
  fi

  for dep in "${deps[@]}"; do
    if ! has "$dep"; then
      WANTS_COLORS=no die "%s is a required dependency" "$dep"
    fi
  done

  if ! compgen -e | grep -qFx WANTS_COLORS; then
    export WANTS_COLORS=yes
  fi
}
