
print_hostname() {
  local HOSTNAME_FULL="$(hostnamectl status | grep "Static hostname:")"
  local HOSTNAME="HOSTNAME = $(cut_hostname $HOSTNAME_FULL)"
  echo $HOSTNAME
}

cut_hostname() {
  local i=0
  local name=""
  for name in "$@"; do
    ((i++))
  done
  echo $name
}
