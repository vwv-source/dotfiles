#!/bin/bash

function get_workspaces_info() {
    output=$(swaymsg -t get_workspaces | jq 'sort_by(.name | gsub("Ⅰ";"1") | gsub("Ⅱ";"2") | gsub("Ⅲ";"3") | gsub("Ⅳ";"4") | gsub("Ⅴ";"5") | gsub("Ⅵ";"6") | gsub("Ⅶ";"7") | gsub("Ⅷ";"8") | gsub("Ⅸ";"9") | gsub("Ⅹ";"10") | tonumber)')
    echo $output
}

get_workspaces_info

swaymsg -t subscribe '["workspace"]' --monitor | {
    while read -r event; do
        get_workspaces_info
    done
}