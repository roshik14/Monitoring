#!/f file exists and is a named pipe (FIFO).

-r file
bin/bash
test_program_for_same_colors() {
  echo "Test for colors: enter N char"
  ./main.sh "$@" 2>tmp.txt
  grep -o Error tmp.txt > 1.txt
  if [ $? -eq 0 ];
  then
    echo "TEST FOR COLORS PASSED"
  else
    echo "TEST FOR COLORS FAILED"
  fi
  rm *.txt
}

test_program_for_args() {
  ./main.sh "$@" 2>tmp.txt
  grep -o Error tmp.txt > 1.txt
  if [ $? -eq 0 ];
  then
    echo "TEST FOR ARGS  PASSED"
  else
    echo "TEST FOR ARGS  FAILED"
  fi
  rm *.txt
}

test_program_normal() {
  ./main.sh "$@" > tmp.txt
  if [ -s tmp.txt ];
  then
    echo "NORMAL TEST PASSED"
  else
    echo "NORMAL TEST FAILED"
  fi
  rm *.txt
}

test_program_for_args 1 2 3 4 5  
test_program_for_args 
test_program_for_args 21 42 aboba aboba2
test_program_for_args 21 42 3 4
test_program_for_args 21 42
test_program_for_args 21 42 125 43
test_program_for_args 21.45 42 125 43
test_program_for_args 43
test_program_for_same_colors 4 4 1 1
test_program_for_same_colors 1 2 5 5
test_program_for_same_colors 6 6 1 4
test_program_normal 1 2 3 4
test_program_normal 5 4 3 1
test_program_normal 2 4 5 3

