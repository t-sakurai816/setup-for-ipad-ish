# check installed ansible
function check_ansible(){
  if ! [ -x "$(command -v ansible)" ]; then
    echo 'Error: ansible is not installed.' >&2
    # apk add --no-cache ansible
  else
    echo 'ansible is installed.'
  fi
}