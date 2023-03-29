get_column() {
  local STR="$1"
  echo "$(tput setab $2)$(tput setaf $3)$STR$(tput sgr 0)"
}
