print_timezone() {
  local FULL_ZONE="$(timedatectl status | grep "Time zone")"
  local ZONE="TIMEZONE = $(cut_timezone $FULL_ZONE)"
  echo $ZONE
}

cut_timezone() {
  local UTC=$(get_utc)
  local ZONE=""
  if [ $UTC -gt 0 ]; then
    ZONE="${3} UTC +${UTC}"
  else
    ZONE="${3} UTC ${UTC}"
  fi
  echo $ZONE
}

get_utc() {
  local CURRENT_DATE=$(date +"%H")
  local UTC_DATE=$(date -u +"%H")
  local UTC=$((${CURRENT_DATE#0} - ${UTC_DATE#0}))
  echo $UTC
}
