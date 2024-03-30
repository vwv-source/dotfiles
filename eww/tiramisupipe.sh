#!/bin/bash

tiramisu -o "{\"summary\":\"#summary\", \"source\":\"#source\", \"body\":\"#body\", \"icon\":\"#icon\"}" | while read -r line; do
    while true; do
        number=$(od -An -N2 -d /dev/urandom)
        if [[ $number -ge 10000 ]] && [[ $number -le 99999 ]]; then
            echo $number > "notifid"
            break
        fi
    done

    if ! grep -q "Spotify" <<< "$line" && ! grep -q "VOLUME" <<< "$line"; then
        echo "$line" >> ~/.config/eww/notifhistory
    fi

    number=$(head -n 1 "notifid")
    eww update notification="$line"
    ([[ $(eww active-windows | grep notificationwidget) == "" ]] && eww open notificationwidget --no-daemonize )
    eww update notificationreveal=true 

    (sleep 3s; [[ $(head -n 1 "notifid") == $number ]] && eww update notificationreveal=false && sleep 0.5s && eww close notificationwidget) &
done