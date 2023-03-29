. ./print_content.sh

print_dir_top_size() {
  local top="top.txt"
  sudo du -h "$@" | sort -rh | head -n 6 | tail -n 5 > $top 
  echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
  print_content "$top" 0
}


