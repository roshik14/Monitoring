. ./modules/print_modules/include_modules_for_print.sh
. ./modules/print_modules/print_content.sh
. ./modules/colors/get_color_for_string.sh

print_all() {
  local LF=$(get_color_for_string "$1" 1)
  local LB=$(get_color_for_string "$1" 2)
  local RF=$(get_color_for_string "$1" 3)
  local RB=$(get_color_for_string "$1" 4)
  print_content $LF $LB $RF $RB
}
