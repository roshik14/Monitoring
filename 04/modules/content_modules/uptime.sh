print_uptime() {
  local FULL_UPTIME=$(uptime -p)
  local UPTIME=$(get_uptime $FULL_UPTIME)
  print_column "UPTIME" "$1" "$2" "$UPTIME" "$3" "$4" 0
}

get_uptime() {
  local UP=""
  local WORD=""
  for WORD in "${@:2}"
  do
    UP="${UP} ${WORD}"
  done
  echo $UP
}
