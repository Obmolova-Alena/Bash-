#!/bin/bash

export HOSTNAME=$(hostname)
export TIMEZONE=$(timedatectl show --property=Timezone --value)
export USER=$(whoami)
export OS=$(cat /etc/issue)
export DATE=$(date "+%-d %b %Y %H:%M:%S")
export UPTIME=$(uptime | awk '{print $3}') 
export UPTIME_SEC=$(cat /proc/uptime | awk '{print $1 " sec"}')
export IP=$(hostname -I | awk '{print $2}')
export MASK=$(ipcalc $IP | grep "Netmask" | awk '{print $2 $3 $4}')
export GATEWAY=$(ip route | grep default | awk '{print $3}')
export RAM_TOTAL=$(LC_ALL=C free -m | awk '/Mem:/{printf "%.3f\n", $2/1024}')
export RAM_USED=$(LC_ALL=C free -m | awk '/Mem:/{printf "%.3f\n", $3/1024}')
export RAM_FREE=$(LC_ALL=C free -m | awk '/Mem:/{printf "%.3f\n", $4/1024}')
export SPACE_ROOT=$(df /root/ | awk 'NR== 2 {printf "%.2f\n", $2/1024}')
export SPACE_ROOT_USED=$(df /root/ | awk 'NR== 2 {printf "%.2f\n", $3/1024}')
export SPACE_ROOT_FREE=$(df /root/ | awk 'NR== 2 {printf "%.2f\n", $4/1024}')

#./main.sh