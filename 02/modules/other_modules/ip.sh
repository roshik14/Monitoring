FULL_IP=$(ip -br a | grep UP)
print_ip() {
  local IP=$(get_ip $FULL_IP)
  echo "IP = $IP" 
}

get_ip() {
  echo "$3"
}
