print_gateway() {
  local GATEWAY_INFO=$(ip r | grep default)
  local GATEWAY=$(get_gateway $GATEWAY_INFO)
  print_column "GATEWAY" "$1" "$2" "$GATEWAY" "$3" "$4" 0
}

get_gateway() {
  echo $3
}
