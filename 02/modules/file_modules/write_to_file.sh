. ./modules/print_info.sh
. ./modules/file_modules/shoud_write.sh

write_to_file() {
  local FILE="$(date +"%d_%m_%y_%H_%M_%S").status"
  should_write
  if [ $? -eq 0 ]; then
    print_all > $FILE
  fi
}
