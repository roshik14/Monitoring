. ./print_dir_count.sh
. ./print_dir_top_size.sh
. ./print_files_count.sh
. ./print_files_top_size.sh
. ./print_exe_top_size.sh

print_info() {
  print_dir_count "$@"
  print_dir_top_size "$@"
  print_files_count "$@"
  print_files_top_size "$@"
  print_exe_top_size "$@"
}
