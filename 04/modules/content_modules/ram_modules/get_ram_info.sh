. ./modules/content_modules/ram_modules/convert_ram.sh

get_ram() {
  local MEM_IN_KB="$1"
  local MEM=$(echo "$MEM_IN_KB * 0.000001" | bc)
  local MEM_NUM=$(get_ram_number "$MEM_IN_KB" "$MEM")
  echo $MEM_NUM
}
