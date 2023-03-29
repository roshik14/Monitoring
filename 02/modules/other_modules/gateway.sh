print_gateway() {
  local GATEWAY_INFO=$(ip r | grep default)
  local GATEWAY=$(get_gateway $GATEWAY_INFO)
  echo "GATEWAY = $GATEWAY"
}

get_gateway() {
  echo $3
}
