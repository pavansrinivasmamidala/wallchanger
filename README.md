# Wallchanger
Change desktop wallpapers continuosly setting time in Gnome.
Just Clone/Download this and run it in your Terminal($./wallchanger.sh) and just give the path to to your collection of Wallpapers you wanted and give the time interval between the wallpapers. 
It's a basic thing more coming soon..!!

Commands to be Executed :  
```bash
$git clone https://github.com/pavansrinivasmamidala/wallchanger  
$cd wallchanger  
$chmod +x wallchanger.sh  
$./wallchanger.sh  
```
that's it just give the path to the wallpapers and set the time in seconds!  

Installing git
```bash
$sudo apt install git#!/bin/bash

read -p  "Enter path to Wallpapers: " path
read -p  "Enter time (seconds):" time

while [ 1 ]; do
files=($path/*)
randompic=printf "%s\n" "${files[RANDOM % ${#files[@]}]}"
gsettings set org.gnome.desktop.background picture-uri "file://$randompic"
sleep $time
done
```
