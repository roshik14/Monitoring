get_space_num() {
  local SPACE="$2"
  local SPACE_IN_KB="$1"
  local LEN=$(expr length $SPACE_IN_KB)
  ((LEN+=1))
  SPACE="${SPACE:0:LEN}"
  echo $SPACE
}
