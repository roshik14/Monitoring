#!/bin/bash

# Include all modules
.  ./check_args.sh
.  ./print_error.sh
. ./is_number.sh

# main process
number_error="Error: Invalid input: expected not a number"
argument_error="Error: Invalid usage: Expected one argument"

is_one_arg $#
if [ $? -eq 0 ];
then
  is_number $1
  if [ $? -ne 0 ];
  then
    echo $1
  else
    print_error $number_error
  fi
else
  print_error $argument_error
fi
