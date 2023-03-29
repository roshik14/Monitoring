print_files_count() {
  echo "Number of:"
  print_conf_files_count "$@"
  print_text_files_count "$@"
  print_exe_files_count "$@"
  print_log_files_count "$@"
  print_arch_files_count "$@"
  print_symb_links_count "$@"
}

print_conf_files_count() {
  local RESULT=$(sudo find "$@" -type f -name "*.conf" | wc -l)  
  echo "Configuration files (with the .conf extension) = $RESULT"
}

print_text_files_count() {
  local RESULT=$(sudo find "$@" -type f -exec file {} \; | grep ":.* ASCII text" | wc -l) 
  echo "Text files = $RESULT" 
}

print_exe_files_count() {
  local RESULT=$(sudo find "$@" -executable -type f | wc -l)
  echo "Executable files = $RESULT" 
}

print_log_files_count() {
  local RESULT=$(sudo find "$@" -type f -name "*.log" | wc -l)
  echo "Log files (with the extension .log) = $RESULT"
}

print_arch_files_count() {
  local RESULT=$(sudo find "$@" -type f -regextype egrep -iregex '.*\.(zip|7z|iso|cpio|ar?|tar(|\.[gx]z|\.bz2)|tgz|tbz2)' | wc -l)
  echo "Archive files = $RESULT"
}

print_symb_links_count() {
  local RESULT=$(sudo find "$@" -type l | wc -l)
  echo "Symbolic links = $RESULT"
}
