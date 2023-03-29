. ./modules/main_modules/include_modules.sh

main_process() {
  local FILE="colors.conf"
  local DEFAULT_FILE="default_colors.conf"
  local SAVED_COLORS="saved_colors.conf"
  if [ -f $FILE ]; then 
    check_file $FILE
    local COUNT="$?"
    if [ $COUNT -eq 0 ]; then
        print_all $FILE
    else
        print_all $DEFAULT_FILE
    fi
    print_color_scheme $SAVED_COLORS $COUNT
  else
    print_error "Error: no file or it's empty"
  fi
  rm -f $SAVED_COLORS *.txt
}

