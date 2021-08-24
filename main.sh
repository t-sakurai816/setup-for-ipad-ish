#!/bin/ash

source ./functions/install_check.sh
source ./functions/setup_ssh_github.sh

echo "Install check"
echo "If it's not there, I'll install it."

check_git
check_vim
check_openssh
check_curl
check_python3
check_pip3
check_nodejs
check_npm

echo "Setup SSH for GitHub"

setup_ssh_github