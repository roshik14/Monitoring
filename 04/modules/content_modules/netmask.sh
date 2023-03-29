print_netmask() {
  local IP="$FULL_IP"
  local MASK=$(get_netmask $IP)
  print_column "MASK" "$1" "$2" "$MASK" "$3" "$4" 0
}

get_netmask() {
  local IP_INFO=$(ifconfig $1 | grep netmask)
  local MASK=$(cut_netmask $IP_INFO)
  echo $MASK
}

cut_netmask() {
  echo $4
}
