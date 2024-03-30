#!/bin/bash

IFS=$'\n'

notifs="(box :orientation \"v\" :spacing 10"

if [ -s ~/.config/eww/notifhistory ]; then
    echo "ignroe this"
else 
    eww update notifsliteral=""
    exit 1
fi

last_lines=$(tail -n 4 "/home/vewu/.config/eww/notifhistory")

for line in $last_lines; do
    if [ "$(echo "$line" | jq -r '.source')" != "Spotify" ] && [ "$(echo "$line" | jq -r '.source')" != "VOLUME" ]; then
        notifs+="(box :orientation \"v\" :space-evenly \"false\" :valign \"end\" :class \"notificationbox\" \
                (box :spacing 10 :space-evenly \"false\" \
                    (label :class \"summary\" :text $(echo "$line" | jq '.summary' | cut -c1-40) :halign \"start\") \
                ) \
                (label :class \"body\" :text $(echo "$line" | jq '.body' | cut -c1-40) :halign \"start\") \
                )"
        echo "$line"
    fi
done

eww update notifsliteral="$notifs)"

IFS=