#!/bin/bash
dir=$(dirname `readlink -f $0`);
list=(`cat "$dir/aptget_gnome"`);

sudo apt-get update
sudo apt-get install -y ${list[@]}

mkdir -p ~/.config/autostart

cp /usr/share/applications/ibus.desktop ~/.config/autostart
cp /usr/share/applications/tilda.desktop ~/.config/autostart

