#!/bin/bash

is_one_arg() {
  local result=0
  if [ $@ -ne 1 ]
  then
    ((result++))
  fi
  return $result
}
