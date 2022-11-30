log() {
  local level=${FUNCNAME[1],,}

  if is_ci; then
    true
  else
    local pre vals

    if wants_colors; then
      declare -A colors=(
        [red]=$(tput setaf 1) [green]=$(tput setaf 2)
        [yellow]=$(tput setaf 3) [reset]=$(tput sgr0)
      )

      pre="%s[%s]:%s" vals=("${colors[$COLOR]}" "$level" "${colors[reset]}")
    else
      pre="[%s]:" vals=("$level")
    fi

    # This is intentional since it's a wrapper around `printf`.
    # shellcheck disable=SC2059
    printf "$pre $1\n" "${vals[@]}" "${@:2}"
  fi
}

notice() {
  COLOR=green log "$@"
}

warn() {
  COLOR=yellow log "$@"
}

error() {
  COLOR=red log "$@"
}

die() {
  error "$@"
  exit "${CODE-1}"
}
