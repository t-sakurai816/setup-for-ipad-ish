function create_user() {
  user=$1
  group=wheel
  if [ -z "$user" ]; then
    echo "Error: No user specified"
    exit 1
  fi
  if [ -z "$group" ]; then
    echo "Error: No group specified"
    exit 1
  fi
  if [ -e "/home/$user" ]; then
    echo "Error: User $user already exists"
    exit 1
  fi
  adduser -h /home/$user -s /bin/ash $user
  adduser $user wheel
  sed -i -e 's/\#\ \%wheel ALL=(ALL) NOPASSWD: ALL/\%wheel\ ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers
}