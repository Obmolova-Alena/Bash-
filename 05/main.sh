#!/bin/bash

START_TIME=$(date +%s)

read -p "Введите абсолютный или относительный путь, который заканчивается на /: " path

if [[ "$path" == */ ]]; then
    chmod +x script05.sh
    source ./script05.sh

else 
    echo "Неверно указан параметр"
    echo "Должен быть абсолютный или относительный путь и заканчиваться на /"
    exit 1
fi

    echo "Total number of folders (including all nested ones) = $NUMBER_OF_FOLDERS"
    echo "TOP 5 folders of maximum size arranged in descending order (path and size): "
    echo "$TOP_5_FOLDERS"
    echo "Total number of files = $NUMBER_OF_FILES"
    echo "Number of: "
    echo "Configuration files (with the .conf extension) = $NUMBER_OF_FILES_CONF"
    echo "Text files = $NUMBER_TEXT_FILES"
    echo "Executable files = $NUMBER_EXECUTABLE_FILES"
    echo "Log files (with the extension .log) = $NUMBER_LOGS_FILES"
    echo "Archive files = $ARCHIVE_FILES"
    echo "Symbolic links = $SYMBOLIC_LINKS"
    echo "TOP 10 files of maximum size arranged in descending order (path, size and type): "
    echo "$TOP_10_FILES_TYPE"
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file): "
    echo "$TOP_10_FILES_XASH"
    echo "Script execution time (in seconds) = $SCRIPT_EXECUTION_TIME"
