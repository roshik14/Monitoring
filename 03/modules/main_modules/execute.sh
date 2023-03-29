. ./modules/main_modules/include_modules.sh

main_process() {
  check_args "$@"
  if [ $? -eq 0 ]; then
    check_colors "$@"
    if [ $? -eq 0 ]; then 
      print_all $2 $3 $4 $5
    else
      try_again
    fi
  else
    print_error "Error: invalid arguments"
  fi
}

