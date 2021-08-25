# check installed git
function check_git() {
  if ! [ -x "$(command -v git)" ]; then
    echo -e "\e[33mNotice: git is not installed.\e[m" >&2
    apk add --no-cache git
  else
    echo -e "\e[32mgit is installed. \e[m"
  fi
}

# check installed vim
function check_vim() {
  if ! [ -x "$(command -v vim)" ]; then
    echo -e "\e[33mNotice: vim is not installed.\e[m" >&2
    apk add --no-cache vim
  else
    echo -e "\e[32mvim is installed. \e[m"
  fi
}

# check installed bash
function check_bash() {
  if ! [ -x "$(command -v bash)" ]; then
    echo -e "\e[33mNotice: bash is not installed.\e[m" >&2
    apk add --no-cache bash
  else
    echo -e "\e[32mbash is installed. \e[m"
  fi
}

# check installed openssh
function check_openssh() {
  if ! [ -x "$(command -v ssh)" ]; then
    echo -e "\e[33mNotice: openssh is not installed.\e[m" >&2
    apk add --no-cache openssh
  else
    echo -e "\e[32mopenssh is installed. \e[m"
  fi
}

# check installed curl
function check_curl() {
  if ! [ -x "$(command -v curl)" ]; then
    echo -e "\e[33mNotice: curl is not installed.\e[m" >&2
    apk add --no-cache curl
  else
    echo -e "\e[32mcurl is installed. \e[m"
  fi
}

# check installed python3
function check_python3() {
  if ! [ -x "$(command -v python3)" ]; then
    echo -e "\e[33mNotice: python3 is not installed.\e[m" >&2
    apk add --no-cache python3
  else
    echo -e "\e[32mpython3 is installed. \e[m"
  fi
}

# check installed pip3
function check_pip3() {
  if ! [ -x "$(command -v pip3)" ]; then
    echo -e "\e[33mNotice: pip3 is not installed.\e[m" >&2
    apk add --no-cache py3-pip
  else
    echo -e "\e[32mpip3 is installed. \e[m"
  fi
}

# check installed nodejs
function check_nodejs() {
  if ! [ -x "$(command -v node)" ]; then
    echo -e "\e[33mNotice: nodejs is not installed.\e[m" >&2
    apk add --no-cache nodejs
  else
    echo -e "\e[32mnodejs is installed. \e[m"
  fi
}

# check installed npm
function check_npm() {
  if ! [ -x "$(command -v npm)" ]; then
    echo -e "\e[33mNotice: npm is not installed.\e[m" >&2
    apk add --no-cache npm
  else
    echo -e "\e[32mnpm is installed. \e[m"
  fi
}

# check installed fzf
function check_fzf() {
  if ! [ -x "$(command -v fzf)" ]; then
    echo -e "\e[33mNotice: fzf is not installed.\e[m" >&2
    apk add --no-cache fzf
  else
    echo -e "\e[32mfzf is installed. \e[m"
  fi
}

# check installed sudo
function check_sudo() {
  if ! [ -x "$(command -v sudo)" ]; then
    echo -e "\e[33mNotice: sudo is not installed.\e[m" >&2
    apk add --no-cache sudo
  else
    echo -e "\e[32msudo is installed. \e[m"
  fi
}
