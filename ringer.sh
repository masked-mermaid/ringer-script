#!/bin/bash

num=0
time=$(TZ="Asia/Kathmandu" date +"%F_%T")
sound="/home/dai/ringer_app/alarm.mp3"
echo -e "\e[31menter the time in seconds you want the system to ring\e[0m "
read n
while [ $num -ge 0 ];
do 
      #echo -e "\a"
      mpg123 "$sound" >/dev/null 2>&1
echo -e "\e[5;1;32mRang  $num time since started in $time\e[0m"
sleep $n
((num++))
done

