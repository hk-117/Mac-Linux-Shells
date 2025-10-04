#!/bin/bash

if [ "$1" = "compile" ] && [ $# -eq 2 ]; then
  gcc -std=c89 -pedantic -Werror -g "$2"
elif [ "$1" = "copytoclip" ] && [ $# -eq 2 ]; then
  cat "$2" | xclip -selection clipboard
elif [ "$1" = "copyfromclip" ] && [ $# -eq 2 ]; then
  xclip -selection clipboard -o > "$2"
elif [ "$1" = "run" ] && [ $# -eq 1 ]; then
  ./a.out
elif [ "$1" = "runio" ] && [ $# -eq 1 ]; then
  ./a.out <input.txt >output.txt
elif [ "$1" = "debug" ] && [ $# -eq 1 ]; then
  gdb ./a.out
else
  echo "Usage:"
  echo "  $0 compile filename.c"
  echo "  $0 copytoclip filename"
  echo "  $0 copyfromclip filename"
  echo "  $0 run"
  echo "  $0 runio"
  echo "  $0 debug"
  exit 1
fi
