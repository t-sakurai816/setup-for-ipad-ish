# check installed git
function check_git() {
  if ! [ -x "$(command -v git)" ]; then
    echo 'Error: git is not installed.' >&2
    # apk add --no-cache git
  else
    echo 'git is installed.'
  fi
}