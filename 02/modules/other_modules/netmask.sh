print_netmask() {
  local IP="$FULL_IP"
  local MASK=$(get_netmask $IP)
  echo "MASK = $MASK"
}

get_netmask() {
  local IP_INFO=$(ifconfig $1 | grep netmask)
  local MASK=$(cut_netmask $IP_INFO)
  echo $MASK
}

cut_netmask() {
  echo $4
}
