is_number() {
  local result=1
  if [ $@ -eq $@ ] 2>/dev/null;
  then
    ((result--))
  fi
  return $result
}
