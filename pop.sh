#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Некорректный ввод"
elif [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Ошибка: $1 является числом"
else 
    echo $1
fi