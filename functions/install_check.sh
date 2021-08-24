# check installed git
function check_git() {
  if ! [ -x "$(command -v git)" ]; then
    echo 'Error: git is not installed.' >&2
    apk add --no-cache git
  else
    echo 'git is installed.'
  fi
}

# check installed vim
function check_vim() {
  if ! [ -x "$(command -v vim)" ]; then
    echo 'Error: vim is not installed.' >&2
    apk add --no-cache vim
  else
    echo 'vim is installed.'
  fi
}

# check installed openssh
function check_openssh() {
  if ! [ -x "$(command -v ssh)" ]; then
    echo 'Error: openssh is not installed.' >&2
    apk add --no-cache openssh
  else
    echo 'openssh is installed.'
  fi
}

# check installed curl
function check_curl() {
  if ! [ -x "$(command -v curl)" ]; then
    echo 'Error: curl is not installed.' >&2
    apk add --no-cache curl
  else
    echo 'curl is installed.'
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

# check installed pip3
function check_pip3() {
  if ! [ -x "$(command -v pip3)" ]; then
    echo 'Error: pip3 is not installed.' >&2
    apk add --no-cache py3-pip
  else
    echo 'pip3 is installed.'
  fi
}

# check installed nodejs
function check_nodejs() {
  if ! [ -x "$(command -v node)" ]; then
    echo 'Error: nodejs is not installed.' >&2
    apk add --no-cache nodejs
  else
    echo 'nodejs is installed.'
  fi
}

# check installed npm
function check_npm() {
  if ! [ -x "$(command -v npm)" ]; then
    echo 'Error: npm is not installed.' >&2
    apk add --no-cache npm
  else
    echo 'npm is installed.'
  fi
}