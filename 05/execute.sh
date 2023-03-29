start_process() {
  RESULT=0
  check_arg "$1" "$2"
  if [ $? -eq 0 ];
  then
    if [ -d "$2" ];
    then
      print_info "$2"
    else
      RESULT=1
      print_error $dir_error
    fi
  else
    RESULT=1
    print_error $argument_error
  fi
  return $RESULT
}
