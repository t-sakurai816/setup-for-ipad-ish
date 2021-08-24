# check installed git
function check_git() {
  if ! [ -x "$(command -v git)" ]; then
    echo 'Error: git is not installed.' >&2
    apk add --no-cache git
  else
    echo 'git is installed.'
  fi
}

# check installed python3
function check_python3() {
  if ! [ -x "$(command -v python3)" ]; then
    echo 'Error: python3 is not installed.' >&2
    apk add --no-cache python3
  else
    echo 'python3 is installed.'
  fi
}

# check installed ansible
function check_ansible(){
  if ! [ -x "$(command -v ansible)" ]; then
    echo 'Error: ansible is not installed.' >&2
    apk add --no-cache ansible
  else
    echo 'ansible is installed.'
  fi
}