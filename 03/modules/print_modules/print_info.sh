. ./modules/colors/get_color.sh
. ./modules/print_modules/include_modules_for_print.sh
. ./modules/print_modules/print_content.sh

print_all() {
  local LF=$(get_color $1)
  local LB=$(get_color $2)
  local RF=$(get_color $3)
  local RB=$(get_color $4)
  print_content $LF $LB $RF $RB
}
