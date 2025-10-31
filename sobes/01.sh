#!/bin/bash

for arg in "$@"; do
    echo "$arg" # вывод аргуметов как отдельных элементов
done

for arg in "$*"; do # вывод аргументов в одну строку
    echo "$arg"
done

echo "PID этого скрипта $$"

echo "1 $!"

echo "2 $?"

