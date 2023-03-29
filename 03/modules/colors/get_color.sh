. ./modules/colors/colors.sh

get_color() {
  COLOR=0
  if [ $1 -eq 1 ]; then
    COLOR="$WHITE"
  elif [ $1 -eq 2 ]; then  
    COLOR="$RED"
  elif [ $1 -eq 3 ]; then
    COLOR="$GREEN"
  elif [ $1 -eq 4 ]; then
    COLOR="$BLUE"
  elif [ $1 -eq 5 ]; then
    COLOR="$PURPLE"
  elif [ $1 -eq 6 ]; then
    COLOR="$BLACK"
  fi
  echo $COLOR
}
