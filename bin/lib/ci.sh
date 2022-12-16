is-ci() {
  compgen -e GITHUB_ACTIONS | grep -qFx GITHUB_ACTIONS &&
    [[ $GITHUB_ACTIONS = true ]]
}
