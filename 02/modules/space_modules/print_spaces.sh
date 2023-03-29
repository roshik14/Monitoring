. ./modules/space_modules/get_space_info.sh

print_space_root() {
  local SPACE_ROOT=$(get_space $2)
  echo "SPACE_ROOT = $SPACE_ROOT MB"
}

print_space_used() {
  local SPACE_USED=$(get_space $3)
  echo "SPACE_USED = $SPACE_USED MB"
}

print_space_free() {
  local SPACE_FREE=$(get_space $4)
  echo "SPACE_FREE = $SPACE_FREE MB"
}
