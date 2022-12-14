is-ci() {
  compgen -e | grep -qFx GITHUB_ACTIONS && [[ $GITHUB_ACTIONS = true ]]
}
