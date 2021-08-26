function generate_github_rsa() {
  echo "Generating RSA key pair..."
  ssh-keygen -t rsa -N "" -f /home/$1/.ssh/github_rsa
  echo "Done."
  cat /home/$1/.ssh/github_rsa.pub > /dev/clipboard
  echo "Public key copied to clipboard."
}

function add_ssh_github_config() {
  echo "Adding SSH config..."
  cat << EOF > /home/$1/.ssh/config
Host github github.com
  HostName github.com
  IdentityFile /home/$1/.ssh/github_rsa
  User git
EOF
}

function setup_ssh_github() {
  user=$1
  if [ ! -e /home/$user/.ssh/github_rsa ]; then
    generate_github_rsa $user
    if grep -q "github.com" /home/$1/.ssh/config; then
      echo "SSH config already exists."
    else
      add_ssh_github_config $user
    fi
    echo "###################################"
    echo "You go the https://github.com/settings/keys."
    echo "Run the following command to verify"
    echo "ssh -T git@github.com"
    echo "###################################"
  else
    echo "###################################"
    echo "GitHub RSA key pair already exists."
    echo "Maybe you're setting up SSH for GitHub!"
    echo "Run the following command to confirm. If it fails, go to the https://github.com/settings/keys. and check it out"
    echo "ssh -T git@github.com"
    echo "###################################"
  fi
}



