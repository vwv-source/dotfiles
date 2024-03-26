#!/bin/bash

# Replace these with your actual commands

# Execute the commands
FILE=~/.config/eww/lightlock
if [ -f "$FILE" ]; then
    sed -i -e 's/#d7d7d7/#111111/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/#acacac/#1a1a1a/g' ~/.config/eww/eww.scss
    sed -i -e 's/#c2c2c2/#252525/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc

    sed -i -e 's/white/DUMMY/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/black/white/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/DUMMY/black/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc

    sed -i -e 's/#c5c5c5/#1b1b1b/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/#464646/#d6d6d6/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    rm $FILE
    pkill dunst && pkill rofi
else
    sed -i -e 's/#111111/#d7d7d7/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/#1a1a1a/#acacac/g' ~/.config/eww/eww.scss
    sed -i -e 's/#252525/#c2c2c2/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc

    sed -i -e 's/white/DUMMY/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/black/white/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/DUMMY/black/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc

    sed -i -e 's/#1b1b1b/#c5c5c5/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    sed -i -e 's/#d6d6d6/#464646/g' ~/.config/eww/eww.scss ~/.config/rofi/config.rasi ~/.config/dunst/dunstrc
    touch $FILE
    pkill dunst && pkill rofi
fi