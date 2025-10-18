#!/bin/bash

HOSTNAME=$(hostname)
TIMEZONE=$(timedatectl show --property=Timezone --value)
USER=$(whoami)
OS=$(cat /etc/issue)
DATE=$(date "+%-d %b %Y %H:%M:%S")
UPTIME=$(uptime | awk '{print $3}') 
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1 " sec"}')
IP=$(hostname -I | awk '{print $2}')
MASK=$(ipcalc $IP | grep "Netmask" | awk '{print $2 $3 $4}')
GATEWAY=$(ip route | grep default | awk '{print $3}')
RAM_TOTAL=$(LC_ALL=C free -m | awk '/Mem:/{printf "%.3f\n", $2/1024}')
RAM_USED=$(LC_ALL=C free -m | awk '/Mem:/{printf "%.3f\n", $3/1024}')
RAM_FREE=$(LC_ALL=C free -m | awk '/Mem:/{printf "%.3f\n", $4/1024}')
SPACE_ROOT=$(df /root/ | awk 'NR== 2 {printf "%.2f\n", $2/1024}')
SPACE_ROOT_USED=$(df /root/ | awk 'NR== 2 {printf "%.2f\n", $3/1024}')
SPACE_ROOT_FREE=$(df /root/ | awk 'NR== 2 {printf "%.2f\n", $4/1024}')

echo "HOSTNAME=$HOSTNAME"
echo "TIMEZONE=$TIMEZONE"
echo "USER=$USER"
echo "OS=$OS"
echo "DATE=$DATE"
echo "UPTIME=$UPTIME"
echo "UPTIME_SEC=$UPTIME_SEC"
echo "IP=$IP"
echo "MASK=$MASK"
echo "GATEWAY=$GATEWAY"
echo "RAM_TOTAL=$RAM_TOTAL Gb"
echo "RAM_USED=$RAM_USED Gb"
echo "RAM_FREE=$RAM_FREE Gb"
echo "SPACE_ROOT=$SPACE_ROOT Mb"
echo "SPACE_ROOT_USED=$SPACE_ROOT_USED Mb"
echo "SPACE_ROOT_FREE=$SPACE_ROOT_FREE Mb"


