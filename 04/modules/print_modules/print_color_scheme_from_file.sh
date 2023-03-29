print_color_scheme_from_file() {
  while read -r line; do
    echo $line
  done < "$@"
}
