#!/bin/bash

case "$1" in #фон
    1)
        PARAMETR_1="\e[47m" # белый
    ;;
    2)
        PARAMETR_1="\e[41m"
    ;;
    3)
        PARAMETR_1="\e[42m"
    ;;
    4)
        PARAMETR_1="\e[44m" # синий 
    ;;
    5)
        PARAMETR_1="\e[45m" # фиолетовый
    ;;
    6)
        PARAMETR_1="\e[40m" # чёрный
    esac

case "$2" in # шрифт
    1)
        PARAMETR_2="\e[37m" # белый
    ;;
    2)
        PARAMETR_2="\e[31m"
    ;;
    3)
        PARAMETR_2="\e[32m"
    ;;
    4)
        PARAMETR_2="\e[34m" # синий 
    ;;
    5)
        PARAMETR_2="\e[35m" # фиолетовый
    ;;
    6)
        PARAMETR_2="\e[30m" # чёрный
    esac

case "$3" in # фон
    1)
        PARAMETR_3="\e[47m" # белый
    ;;
    2)
        PARAMETR_3="\e[41m"
    ;;
    3)
        PARAMETR_3="\e[42m"
    ;;
    4)
        PARAMETR_3="\e[44m" # синий 
    ;;
    5)
        PARAMETR_3="\e[45m" # фиолетовый
    ;;
    6)
        PARAMETR_3="\e[40m" # чёрный
    esac

case "$4" in # шрифт
    1)
        PARAMETR_4="\e[37m" # белый
    ;;
    2)
        PARAMETR_4="\e[31m"
    ;;
    3)
        PARAMETR_4="\e[32m"
    ;;
    4)
        PARAMETR_4="\e[34m" # синий 
    ;;
    5)
        PARAMETR_4="\e[35m" # фиолетовый
    ;;
    6)
        PARAMETR_4="\e[30m" # чёрный
    esac
  #  chmod +x team.sh
    source ./teams.sh

    echo -e "${PARAMETR_1}${PARAMETR_2}HOSTNAME\e[0m = ${PARAMETR_3}${PARAMETR_4}$HOSTNAME" 
    echo -e "${PARAMETR_1}${PARAMETR_2}TIMEZONE\e[0m = ${PARAMETR_3}${PARAMETR_4}$TIMEZONE" 
    echo -e "${PARAMETR_1}${PARAMETR_2}USER\e[0m = ${PARAMETR_3}${PARAMETR_4}$USER" 
    echo -e "${PARAMETR_1}${PARAMETR_2}OS\e[0m = ${PARAMETR_3}${PARAMETR_4}$OS" 
    echo -e "${PARAMETR_1}${PARAMETR_2}DATE\e[0m = ${PARAMETR_3}${PARAMETR_4}$DATE" 
    echo -e "${PARAMETR_1}${PARAMETR_2}UPTIME\e[0m = ${PARAMETR_3}${PARAMETR_4}$UPTIME" 
    echo -e "${PARAMETR_1}${PARAMETR_2}UPTIME_SEC\e[0m = ${PARAMETR_3}${PARAMETR_4}$UPTIME_SEC" 
    echo -e "${PARAMETR_1}${PARAMETR_2}IP\e[0m = ${PARAMETR_3}${PARAMETR_4}$IP" 
    echo -e "${PARAMETR_1}${PARAMETR_2}MASK\e[0m = ${PARAMETR_3}${PARAMETR_4}$MASK" 
    echo -e "${PARAMETR_1}${PARAMETR_2}GATEWAY\e[0m = ${PARAMETR_3}${PARAMETR_4}$GATEWAY" 
    echo -e "${PARAMETR_1}${PARAMETR_2}RAM_TOTAL\e[0m = ${PARAMETR_3}${PARAMETR_4}$RAM_TOTAL" 
    echo -e "${PARAMETR_1}${PARAMETR_2}RAM_USED\e[0m = ${PARAMETR_3}${PARAMETR_4}$RAM_USED" 
    echo -e "${PARAMETR_1}${PARAMETR_2}RAM_FREE\e[0m = ${PARAMETR_3}${PARAMETR_4}$RAM_FREE" 
    echo -e "${PARAMETR_1}${PARAMETR_2}SPACE_ROOT\e[0m = ${PARAMETR_3}${PARAMETR_4}$SPACE_ROOT" 
    echo -e "${PARAMETR_1}${PARAMETR_2}SPACE_ROOT_USED\e[0m = ${PARAMETR_3}${PARAMETR_4}$SPACE_ROOT_USED" 
    echo -e "${PARAMETR_1}${PARAMETR_2}SPACE_ROOT_FREE\e[0m = ${PARAMETR_3}${PARAMETR_4}$SPACE_ROOT_FREE" 


    