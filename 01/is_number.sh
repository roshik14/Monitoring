is_number() {
  local result=2
  local int=$(echo "$@" | cut -d '.' -f1)
  local point=$(echo "$@" | cut -d '.' -f2)
  if [ $int -eq $int ] 2>/dev/null;
  then
    ((result--))
  fi
  if [ $point -eq $point ] 2>/dev/null;
  then
    ((result--))
  fi
  return $result
}
