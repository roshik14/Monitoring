print_uptime_in_sec() {
  local FULL_UPTIME=$(cat /proc/uptime)
  local UP_IN_SEC=$(cut_uptime_in_sec $FULL_UPTIME)
  echo "UPTIME_SEC = $UP_IN_SEC"
}

cut_uptime_in_sec() {
  echo $1
}
