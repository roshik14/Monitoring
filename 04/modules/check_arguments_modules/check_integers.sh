. ./modules/check_arguments_modules/is_number.sh

check_for_integers() {
  local INVALID_INPUT=4
  ARRAY=($@)
  for arg in "${ARRAY[@]:1}"; do
    is_number $arg
    if [ $? -eq 0 ] && [ $arg -gt 0 ] && [ $arg -lt 7 ]; then
      ((INVALID_INPUT--))
    fi
  done
  return $INVALID_INPUT
}
