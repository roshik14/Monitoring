check_args() {
  check_args_count $1
  ARGS_COUNT_OK=$?

  check_for_integers "$@"
  ARGS_INT_OK=$?

  local INVALID_INPUT=1
  if [ $ARGS_COUNT_OK -eq 0 ] && [ $ARGS_INT_OK -eq 0 ]; then
    INVALID_INPUT=0
  fi 
  return $INVALID_INPUT
}
