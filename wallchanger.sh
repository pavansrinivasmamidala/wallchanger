#!/bin/bash

read -p  "Enter path to Wallpapers: " path
read -p  "Enter time (seconds):" time

while [ 1 ]; do
files=($path/*)
randompic = printf "%s\n" "${files[RANDOM % ${#files[@]}]}"
gsettings set org.gnome.desktop.background picture-uri "file://$randompic"
sleep $time
done
