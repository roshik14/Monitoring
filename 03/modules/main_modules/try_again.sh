try_again() {
  print_error "Colors of foreground and background shouldn't be the same, please try again"
  read -r -a ARGS
  local LEN=$(echo ${ARGS[*]} | wc -w)
  main_process $LEN ${ARGS[*]}
}
