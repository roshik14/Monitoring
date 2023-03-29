. ./modules/colors/get_color.sh

get_color_from_file() {
  local COLOR_NUM=$(sed -n "$1p" "$2" | tail -c 2 | head -c 1) 
  echo $COLOR_NUM > color_num.txt
  local COLOR=$(get_color $COLOR_NUM)
  echo $COLOR
}

