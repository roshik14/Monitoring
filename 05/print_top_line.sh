print_top_line() {
  local DIR=$(get_file_name "$2")
  local SIZE=$(echo "$2" | cut -d$'\t' -f1)
  local LAST_CHAR=$(echo $DIR | tail -c 2 | head -c 1)
  if [ $LAST_CHAR != "/" ]; then
    DIR="$DIR/"
  fi
  echo "$1 - "$DIR", "$SIZE"b" 
}

get_file_name() {
  local RES=$(echo "$@" | cut -d$'\t' -f2)
  echo $RES
}

