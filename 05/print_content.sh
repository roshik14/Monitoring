. ./print_top_line.sh
. ./print_file_top_line.sh
. ./print_exe_top_line.sh

print_content() {
  line_num=1
  while read -r line; do
    if [ $2 -eq 0 ]; then  
      print_top_line $line_num "$line" 
    elif [ $2 -eq 1 ]; then
      print_file_top_line $line_num "$line" 
    else
      print_exe_top_line $line_num "$line" 
    fi
    ((line_num++))
  done < "$1"
  rm "$1"
}
