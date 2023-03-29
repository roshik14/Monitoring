#!/bin/bash

# Include modules
.  ./check_args.sh
.  ./print_error.sh
.  ./print_info.sh
.  ./execute.sh
.  ./print_time.sh

dir_error="Error: Invalid input: No such directory"
argument_error="Error: Invalid input"

main() {
  start=$(date +%s.%N)
  start_process "$1" "$2" 
  NO_ERRORS="$?"
  end=$(date +%s.%N)
  if [ $NO_ERRORS -eq 0 ]; then
    print_time "$start" "$end"
  fi
}

main $# "$@"
