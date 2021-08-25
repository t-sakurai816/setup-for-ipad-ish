function create_user() {
  user=$1
  group=wheel
  adduser -h /home/$user -s /bin/ash $user
  adduser $user wheel
  sed -i -e 's/\#\ \%wheel ALL=(ALL) NOPASSWD: ALL/\%wheel\ ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers
}
