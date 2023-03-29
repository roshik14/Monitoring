print_date() {
  local DATE=$(date +"%d %b %Y %T")
  print_column "DATE" "$1" "$2" "$DATE" "$3" "$4" 0
}
