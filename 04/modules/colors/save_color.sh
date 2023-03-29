save_color() {
  if [ $1 -eq 1 ]; then
    echo "Comumn 1 background = $2 ("$3")" >> saved_colors.conf
  elif [ $1 -eq 2 ]; then 
    echo "Comumn 1 font_color  = $2 ("$3")" >> saved_colors.conf
  elif [ $1 -eq 3 ]; then 
    echo "Comumn 2 background = $2 ("$3")" >> saved_colors.conf
  elif [ $1 -eq 4 ]; then 
    echo "Comumn 2 font_color = $2 ("$3")" >> saved_colors.conf
  fi
}
