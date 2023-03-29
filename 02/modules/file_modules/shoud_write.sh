should_write() {
  local RESULT=1
  read -p "Do you want to write info into the file?[Y/N]" -n 1 ANSWER 
  if [ $ANSWER == "y" ] || [ $ANSWER == "Y" ]; then
    RESULT=0
  fi
  return $RESULT
}
