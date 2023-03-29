check_args_count() {
  local INVALID_INPUT=0
  local ARGS_COUNT=4
  if [ $1 -ne $ARGS_COUNT ]
  then
    ((INVALID_INPUT++))
  fi
  return $INVALID_INPUT
}
