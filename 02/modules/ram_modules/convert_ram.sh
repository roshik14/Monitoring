get_ram_number() {
  local MEM="$2"
  local TOTAL="$1"
  local LEN=$(expr length $TOTAL)
  ((LEN-=2))
  if [ $LEN -le 4 ]; then
    MEM="0${MEM:0:LEN}"
  else
    MEM="${MEM:0:LEN}"
  fi
  echo $MEM
}


