. ./modules/content_modules/ram_modules/get_ram_info.sh

print_ram() {
  local TOTAL_RAM=$(get_ram $2)
  local USED_RAM=$(get_ram $3)
  local FREE_RAM=$(get_ram $7)
  print_column "RAM_TOTAL" $8 $9 "$TOTAL_RAM" "${10}" "${11}" 1
  print_column "RAM_USED" $8 $9 "$USED_RAM" "${10}" "${11}" 1
  print_column "RAM_FREE" $8 $9 "$FREE_RAM" "${10}" "${11}" 1
}

