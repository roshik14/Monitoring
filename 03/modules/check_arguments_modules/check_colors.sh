check_colors() {
  local INVALID_INPUT=0
  if [ $2 -eq $3 ] || [ $4 -eq $5 ]; then
    INVALID_INPUT=1
  fi
  return $INVALID_INPUT
}
