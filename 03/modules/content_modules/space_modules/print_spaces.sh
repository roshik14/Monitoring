. ./modules/content_modules/space_modules/get_space_info.sh

print_spaces() {
  local SPACE_ROOT=$(get_space $2)
  local SPACE_USED=$(get_space $3)
  local SPACE_FREE=$(get_space $4)

  print_column "SPACE_ROOT" $7 $8 "$SPACE_ROOT" $9 "${10}" 2
  print_column "SPACE_USED" $7 $8 "$SPACE_USED" $9 "${10}" 2
  print_column "SPACE_FREE" $7 $8 "$SPACE_FREE" $9 "${10}" 2
}

