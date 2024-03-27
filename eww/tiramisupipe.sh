#!/bin/bash

tiramisu -o "{\"summary\":\"#summary\", \"source\":\"#source\", \"body\":\"#body\", \"icon\":\"#icon\"}" | while read -r line; do
    while true; do
    number=$(od -An -N2 -d /dev/urandom)
    if [[ $number -ge 10000 ]] && [[ $number -le 99999 ]]; then
        echo $number > "notifid"
        break
    fi
    done
    
    number=$(head -n 1 "notifid")
    eww update notification="$line"
    ([[ $(eww active-windows | grep notificationwidget) == "" ]] && eww open notificationwidget --no-daemonize )
    (sleep 3s; [[ $(head -n 1 "notifid") == $number ]] && eww close notificationwidget) &
done