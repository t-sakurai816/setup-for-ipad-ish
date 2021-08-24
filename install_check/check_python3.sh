# check install python3
if ! [ -x "$(command -v python3)" ]; then
  echo 'Error: python3 is not installed.' >&2
  apk add --no-cache python3
else
  echo 'python3 is installed.'
fi