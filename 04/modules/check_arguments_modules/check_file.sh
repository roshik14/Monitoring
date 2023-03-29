. ./modules/check_arguments_modules/check_current_line.sh
. ./modules/check_arguments_modules/check_colors.sh

check_file() {
  local RESULT=1
  while read -r line ; do
    local LEN=$(expr length "$line")
    ((LEN--))
    local CURR=$(echo $line | head -c $LEN)
    read_current_line $CURR 
  done < $@
  check_colors $HAS_LEFT_FONT $HAS_LEFT_BACK $HAS_RIGHT_FONT $HAS_RIGHT_BACK
  if [ $? -eq 0 ]; then
    ((RESULT--))
  fi
  return $RESULT
}
