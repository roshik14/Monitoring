. ./modules/main_modules/get_column.sh
. ./modules/print_modules/print_column.sh

print_content() {
  print_hostname "$@"
  print_timezone "$@"
  print_user "$@" 
  print_os "$@"
  print_date "$@"
  print_uptime "$@"
  print_uptime_in_sec "$@"
  print_ip "$@"
  print_netmask "$@"
  print_gateway "$@"
  print_ram_info "$@"
  print_space_info "$@"
}
