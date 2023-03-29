check_colors() {
  local RESULT=0
  for item in "$@"; do
    if [ $item -eq 0 ]; then
      RESULT=1
    fi
  done
  return $RESULT
}
