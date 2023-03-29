. ./modules/space_modules/convert_space.sh

get_space() {
  local SPACE_IN_KB="$1"
  local SPACE=$(echo "$SPACE_IN_KB * 0.001" | bc)
  local SPACE_NUM=$(get_space_num $SPACE_IN_KB $SPACE)
  echo $SPACE_NUM
}
