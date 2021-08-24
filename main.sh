#!/bin/ash

source ./functions/install_check.sh
source ./functions/setup_ssh_github.sh

echo -e "\nInstall check"
echo -e "If it's not there, I'll install it.\n"

check_git
check_vim
check_openssh
check_curl
check_python3
check_pip3
check_nodejs
check_npm

echo -e "\n\n"

echo -e "Setup SSH for GitHub\n"

setup_ssh_github

alias ll='ls -l'