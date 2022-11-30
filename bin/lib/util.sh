has() {
  hash "$1" 2> /dev/null
}

boilerplate() {
  if ! has tput || ! wants_colors; then
    export WANTS_COLORS=no
  else
    export WANTS_COLORS=yes
  fi

  install jq
}

install() {
  local dep prog pkg api_{root,pkg} dld_url

  for dep do
    prog=${dep%%:*} pkg=${dep#*:}

    if has "$prog"; then
      continue
    fi

    if [[ $pkg = */* ]]; then
      # This entire branch is dumb, but at least it saves a lot of code if
      # another package needs to be downloaded from GitHub.
      api_root=https://api.github.com
      api_pkg=$api_root/repos/$pkg/releases/latest

      # The os variable is set in another library.
      # shellcheck disable=SC2154
      dld_url=$(curl -sS "$api_pkg" | jq -rM --arg os "$os" '
        .assets[] |
        select(.browser_download_url | contains($os)) |
        .browser_download_url
      ')

      if [[ -z $dld_url ]]; then
        die "unable to find suitable release for package %s" "$pkg"
      fi

      curl -sSLo /tmp/"$prog".tar.gz "$dld_url"
      mkdir -p /tmp/"$prog"
      tar -C /tmp/"$prog" -xvf /tmp/"$prog".tar.gz

      find /tmp/"$prog" -type f -name "$prog" \
        -exec sh -c '[ -x "$1" ]' _ {} ';' \
        -exec sh -c 'cp -f "$1" /usr/local/bin' _ {} ';' \
        -quit
    elif [[ $os = darwin* ]] && has brew; then
      brew install "$prog"
    elif [[ $os = linux* ]]; then
      if has apt; then
        apt -qq install "$prog"
      elif has yum; then
        yum install "$prog"
      fi
    else
      die "please install the %s package" "$pkg"
    fi
  done
}
