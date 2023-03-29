
print_file_top_line() {
  local LINE=$(print_top_line "$1" "$2")
  local FILE=$(get_file_name "$2")
  local FILE_TYPE=$(get_file_type $FILE)
  echo "$LINE, $FILE_TYPE"
}

get_file_type() {
  local RESULT=""
  if [ -x "$@" ]; then
    RESULT="exe"
  elif [ -h "$@" ]; then
    RESULT="link"
  else
    RESULT=$(get_more_file_type $@)
  fi
  echo $RESULT
}

get_more_file_type() {
  local TYPE=""
  echo "$@" | grep "\.log" > /dev/null
  local IS_LOG="$?"
  echo "$@" | grep "\.conf" > /dev/null
  local IS_CONF="$?"
  file "$@" | grep -e "archive" -e "compressed data" > /dev/null
  local IS_ARCH="$?"
  file "$@" | grep -e "ASCII text" -e "Unicode text" > /dev/null
  local IS_TXT="$?"
  if [ $IS_TXT -eq 0 ]; then
    TYPE="txt"
  elif [ $IS_CONF -eq 0 ]; then
    TYPE="conf"
  elif [ $IS_ARCH -eq 0 ]; then
    TYPE="zip"
  elif [ $IS_LOG -eq 0 ]; then
    TYPE="log"
  else
    local dot=$(echo "$@" | tr -cd '.' | wc -c)
    ((dot++))
    TYPE=$(echo "$@" | cut -d '.' -f$dot)
  fi
  echo $TYPE
}
