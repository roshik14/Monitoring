. ./print_content.sh

print_files_top_size() {
  local top="top.txt" 
  sudo find "$@" -type f -exec du -ah {} + | sort -rh | head -n 10 >$top
  echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
  print_content "$top" 1
}


