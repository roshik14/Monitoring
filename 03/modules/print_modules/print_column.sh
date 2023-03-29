print_column() {
  local LEFT="$1"
  local RIGHT=""
  if [ $7 -eq 1 ]; then
    RIGHT="$4 GB"
  elif [ $7 -eq 2 ]; then
    RIGHT="$4 MB"
  else
    RIGHT="$4"
  fi
  local LEFT_COLUMN=$(get_column "$LEFT" $2 $3)
  local RIGHT_COLUMN=$(get_column "$RIGHT" $5 $6)
  echo "$LEFT_COLUMN = $RIGHT_COLUMN"
}
