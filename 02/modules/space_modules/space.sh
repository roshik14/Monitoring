. ./modules/space_modules/print_spaces.sh

SPACE_TOTAL_INFO=$(df / | grep /)

print_space_info() {
  print_space_root $SPACE_TOTAL_INFO
  print_space_used $SPACE_TOTAL_INFO
  print_space_free $SPACE_TOTAL_INFO
}


