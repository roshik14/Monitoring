. ./modules/colors/get_color_from_file.sh
. ./modules/colors/get_color_name.sh
. ./modules/colors/save_color.sh
get_color_for_string() {
  local COLOR=$(get_color_from_file $2 "$1") 
  read -n 1 num < color_num.txt 
  local COLOR_NUM=$(echo $num)
  local COLOR_NAME=$(get_color_name $COLOR)
  save_color $2 $COLOR_NUM $COLOR_NAME
  echo $COLOR
}

