
print_exe_top_line() {
  local LINE=$(print_top_line "$1" "$2")
  local FILE=$(get_file_name "$2")
  local HASH=$(md5sum $FILE | cut -d ' ' -f1)
  echo "$LINE, $HASH"
}
