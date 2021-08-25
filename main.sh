#!/ein/ash

source ./functions/install_check.sh
source ./functions/create_user.sh
source ./functions/setup_ssh_github.sh

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
create_user

su $1

echo -e "Setup SSH for GitHub\n"

setup_ssh_github
