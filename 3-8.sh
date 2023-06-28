#!/bin/bash

#функция для генерации результата
function generate() {
  local num=$1
  if(( $num >= 1 && $num <= 500 )); then
    for i in $(seq 1 $num); do
      rand_str=$(pwgen -1 10)
      echo "dir_${rand_str}_${i}"
    done
    exit 0
  else
    echo "Error: Input number must be between 1 and 500"
    exit 1
  fi
}

#проверка, что скрипт был запущен правильно и дальнейшая генерация результата
function main(){
  read  num
  if ! [[ "$num" =~ ^[1-500]+$ ]]; then
    echo "Invalid input. Please enter a number in the range 1-500, for example, echo '10' | ./3-8.sh"
    exit 1
  else
    generate $num 
    exit 0
  fi
}
main $*
