print_uptime_in_sec() {
  local FULL_UPTIME=$(cat /proc/uptime)
  local UP_IN_SEC=$(cut_uptime_in_sec $FULL_UPTIME)
  print_column "UPTIME_IN_SEC" "$1" "$2" "$UP_IN_SEC" "$3" "$4" 0
}

cut_uptime_in_sec() {
  echo $1
}
