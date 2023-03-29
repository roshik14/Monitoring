. ./modules/content_modules/space_modules/print_spaces.sh

SPACE_TOTAL_INFO=$(df / | grep /)

print_space_info() {
  print_spaces $SPACE_TOTAL_INFO $1 $2 $3 $4
}
