
print_dir_count() {
  local RESULT=$(sudo find "$@" -mindepth 1 -type d | wc -l)
  echo "Total number of folders (including all nested ones) = $RESULT"  
}

print_file_count() {
  local RESULT=$(sudo find "$@" -mindepth 1 -type f | wc -l)
  echo "Total number of files = $RESULT"
}
