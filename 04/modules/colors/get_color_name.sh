get_color_name() {
  local RESULT=""
  if [ $1 -eq $WHITE ]; then
    RESULT="white"
  elif [ $1 -eq $RED ]; then
    RESULT="red"
  elif [ $1 -eq $GREEN ]; then
    RESULT="green"
  elif [ $1 -eq $BLUE ]; then
    RESULT="blue"
  elif [ $1 -eq $PURPLE ]; then
    RESULT="purple"
  elif [ $1 -eq $BLACK ]; then
    RESULT="black"
  fi
  echo $RESULT
}
