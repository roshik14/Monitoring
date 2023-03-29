print_user() {
  local USER=$(whoami)
  print_column "USER" "$1" "$2" "$USER" "$3" "$4" 0
}
