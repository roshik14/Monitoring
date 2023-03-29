print_time() {
  runtime=$(echo "$2" - "$1" | bc -l)
  seconds=$(echo $runtime | cut -d '.' -f1)
  if [ -z $seconds ]; then
    seconds="0"
  fi
  miliseconds=$(echo $runtime | cut -d '.' -f2 | head -c 1)
  echo "Script execution time (in seconds) = $seconds.$miliseconds"
}
