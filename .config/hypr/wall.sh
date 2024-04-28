#!/bin/bash


IMG_NAME=$(ls ~/Pictures/wallpapers | shuf -n 1)

IMG_PATH=~/Pictures/wallpapers/$IMG_NAME

gradience-cli monet -n $IMG_NAME -p $IMG_PATH --theme dark
gradience-cli apply -n $IMG_NAME --gtk both
wal -i $IMG_PATH -n
swww img $IMG_PATH --transition-type any --transition-fps 75
swaync-client -rs
swaync-client -R