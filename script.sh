#!/bin/bash

for word in яблоко банан груша; do
    echo "У нас есть $word"
done

i=1
while [ $i -le 10 ]; do
    echo "число $i"
    i=$((i+1))
done