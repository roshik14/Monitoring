FULL_IP=$(ip -br a | grep UP)
print_ip() {
  local IP=$(get_ip $FULL_IP)
  print_column "IP" "$1" "$2" "$IP" "$3" "$4" 0
}

get_ip() {
  echo "$3"
}
