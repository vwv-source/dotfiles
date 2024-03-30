# vewu's ~~horrible~~ dotfiles
Here are my dotfiles because people keep asking for them ¯\\\_(ツ)_/¯<br>(please create a github issue if you have any problems)

- Window Manager - `SwayFX`
- Terminal - `WezTerm`
- Bar & Action Center - `eww`
- Launcher - `rofi`
- File Manager - `Thunar`
- Browser - `Firefox`

i do not recommend looking at the bash scripts that i made

## Screenshots

<img align="center" src="https://i.imgur.com/glIERBo.png" style="box-shadow: 0px 0px 20px #505050">

<br>

<img align="center" src="https://i.imgur.com/8mRNDW4.png" style="box-shadow: 0px 0px 20px #505050">

<br>

<img align="center" src="https://i.imgur.com/vZPIxbM.png" style="box-shadow: 0px 0px 20px #505050">

## Installation
### 1. Dependencies
You need to install these dependencies using paru or your preferred AUR helper:<br>
```paru -S swayfx eww dunst tiramisu wezterm rofi imagemagick playerctl polkit-kde-agent xdg-desktop-portal thunar thunar-archive-plugin noto-fonts noto-fonts-cjk ttf-jetbrains-mono-nerd papirus-icon-theme pipewire pipewire-alsa pipewire-audio pipewire-pulse pipewire-jack wireplumber gst-plugin-pipewire pavucontrol sensors rofi-bluetooth autotiling swaybg```
<br><br>
Optional stuff:
<br>
```paru -S code firefox spotify-player-full```
<br>
### 2. Installing the Dotfiles
Clone the repo:<br>
```git clone https://github.com/vwv-source/dotfiles```<br><br>
Move the config files to their appropiate locations:<br>
```mv dotfiles/* ~/.config/```
<br><br>
Delete the cloned repo folder:<br>
```rm -rf dotfiles```<br>

One liner:<br>
```git clone https://github.com/vwv-source/dotfiles && mv dotfiles/* ~/.config/ && rm -rf dotfiles```<br>

## stuff in the future maybe
- cleaning up the extremely messy eww files
- animating the panels (lazy)
- ~~music control section above the "currently playing" widget~~
- ~~making the music widget actually disappear instead of saying "Nothing is currently playing" (setting the musicstatus string to "" just gives you an empty circle)~~
- changable accent color
- switching to something cleaner than thunar
- ~~using something more "riceable" than dunst~~
- ~~notification center~~
- ~~calendar~~
- ~~light mode??~~