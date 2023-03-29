. ./modules/ram_modules/print_ram.sh

MEM_TOTAL_INFO=$(free | grep Mem)

print_ram_info() {
  print_ram $MEM_TOTAL_INFO
}


