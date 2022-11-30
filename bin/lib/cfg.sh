is_enabled() {
  local var_name=${FUNCNAME[1]^^}

  if compgen -e | grep -qFx "$var_name"; then
    [[ ${!var_name} != no ]]
  else
    return 1
  fi
}

is_ci() {
  is_enabled
}

wants_colors() {
  is_enabled
}
