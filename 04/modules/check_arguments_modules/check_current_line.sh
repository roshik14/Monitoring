. ./modules/check_arguments_modules/valid_lines.sh

read_current_line() {
  if [ "$1" == "$LEFT_BACK" ]; then
    if [ $HAS_LEFT_BACK -eq 0 ]; then
      HAS_LEFT_BACK=1
    fi
  elif [ "$1" == "$LEFT_FONT" ]; then
    if [ $HAS_LEFT_FONT -eq 0 ]; then
      HAS_LEFT_FONT=1
    fi
  elif [ "$1" == "$RIGHT_BACK" ]; then
    if [ $HAS_RIGHT_BACK -eq 0 ]; then
      HAS_RIGHT_BACK=1
    fi
  elif [ "$1" == "$RIGHT_FONT" ]; then
    if [ $HAS_RIGHT_FONT -eq 0 ]; then
      HAS_RIGHT_FONT=1
    fi
  fi
}
