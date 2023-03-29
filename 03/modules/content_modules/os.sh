print_os() {
  local OS=$(uname -or)
  print_column "OS" "$1" "$2" "$OS" "$3" "$4" 0
}
