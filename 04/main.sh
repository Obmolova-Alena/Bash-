#!/bin/bash

CONFIG_FILE="colors.conf"

source $CONFIG_FILE

background1="$column1_background"
font_color1="$column1_font_color"
background2="$column2_background"
font_color2="$column2_font_color"

if [[ -z "$column1_background" ]]; then
    background1="default" 
fi

if [[ -z "$column1_font_color" ]]; then
    font_color1="default" 
fi

if [[ -z "$column2_background" ]]; then
    background2="default" 
fi

if [[ -z "$column2_font_color" ]]; then
    font_color2="default" 
fi

column1_background="${column1_background:-2}"
column1_font_color="${column1_font_color:-1}"
column2_background="${column2_background:-2}"
column2_font_color="${column2_font_color:-1}"

get_color(){
    case $1 in
    1) echo "white";;
    2) echo "red";;
    3) echo "green";;
    4) echo "blue";;
    5) echo "purple";;
    6) echo "black";; 
    esac
}

chmod +x script03.sh
./script03.sh "$column1_background" "$column1_font_color" "$column2_background" "$column2_font_color"

echo "Column 1 background = $background1 ($(get_color "$column1_background"))"
echo "Column 1 font color = $font_color1 ($(get_color "$column1_font_color"))"
echo "Column 2 background = $background2 ($(get_color "$column2_background"))"
echo "Column 2 font color = $font_color2 ($(get_color "$column2_font_color"))"
