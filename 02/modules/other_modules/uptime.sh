print_uptime() {
  local FULL_UPTIME=$(uptime -p)
  local UP=$(get_uptime $FULL_UPTIME)
  echo "UPTIME = $UP"
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
