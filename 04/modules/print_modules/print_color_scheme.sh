. ./modules/print_modules/print_default_color_scheme.sh
. ./modules/print_modules/print_color_scheme_from_file.sh

print_color_scheme() {
  if [ $2 -ne 0 ]; then
    print_default_color_scheme
  else
    print_color_scheme_from_file "$1"
  fi
}
