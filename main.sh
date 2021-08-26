#!/ein/ash

source ./functions/install_check.sh
source ./functions/setup_ssh_github.sh
source ./functions/create_user.sh

echo -e "\nInstall check"
echo -e "If it's not there, I'll install it.\n"

check_git
check_vim
check_bash
check_openssh
check_curl
check_python3
check_pip3
check_nodejs
check_npm
check_fzf
check_sudo

echo -e "\n\n"

echo -e "Creating user"
create_user $1

sudo -u $1 whoami

echo -e "Setup SSH for GitHub\n"

sudo -u $1 setup_ssh_github

