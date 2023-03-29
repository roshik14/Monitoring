#!/bin/bash

check_arg() {
  local result=0
  local last_char=$(echo "$2" | tail -c 2 | head -c 1)
  if [ "$1" -ne 1 ] || [ "$last_char" != "/" ]; then
    ((result++))
  fi
  return $result
}
