function generate_github_rsa() {
  echo "Generating RSA key pair..."
  ssh-keygen -t rsa -N "" -f ~/.ssh/github_rsa
  echo "Done."
  cat ~/.ssh/github_rsa.pub > /dev/clipboard | cat /dev/clipboard
  echo "Public key copied to clipboard."
}

function setup_ssh_github() {
  if [ ! -f ~/.ssh/github_rsa ]; then
    generate_github_rsa()
    echo "###################################"
    echo "You go the https://github.com/settings/keys ."
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



