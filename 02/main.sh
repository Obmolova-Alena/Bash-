#!/bin/bash

read -p "Хотите ли вы записать данные в файл? (Y/N) " answer

if [[ $answer == "Y" || $answer == "y" ]]; then
    echo "Записываем данные в файл"
    filename=$(date +"%d_%m_%y_%H_%M_%S".status)
    touch $filename 
    chmod +x print.sh
    ./print.sh > $filename
else 
    echo "Ответ отрицательный"
fi