function create_user() {
  user=$1
  group=wheel
  if [ -e "/home/$user" ]; then
    echo "Error: User $user already exists"
    exit 1
  fi
  adduser -h /home/$user -s /bin/ash $user
  adduser $user wheel
  sed -i -e 's/\#\ \%wheel ALL=(ALL) NOPASSWD: ALL/\%wheel\ ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers
}