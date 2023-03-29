print_hostname() {
  local HOSTNAME_FULL=$(hostnamectl status | grep "Static hostname:")
  local HOSTNAME=$(cut_hostname $HOSTNAME_FULL)
  print_column "HOSTNAME" "$1" "$2" "$HOSTNAME" "$3" "$4" 0
}

cut_hostname() {
  local i=0
  local name=""
  for name in "$@"; do
    ((i++))
  done
  echo $name
}
