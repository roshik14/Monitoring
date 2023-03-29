. ./modules/ram_modules/get_ram_info.sh

print_ram() {
  local TOTAL_RAM=$(get_ram $2)
  local USED_RAM=$(get_ram $3)
  local FREE_RAM=$(get_ram $7)

  echo "RAM_TOTAL = $TOTAL_RAM GB"
  echo "RAM_USED = $USED_RAM GB"
  echo "RAM_FREE = $FREE_RAM GB" 
}

