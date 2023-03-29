. ./print_content.sh

print_exe_top_size() {
  echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
  local top="top.txt"
  sudo find "$@" -type f -executable -exec du -ah {} +| sort -rh | head -n 10 > "$top"
  print_content "$top" 2
}


