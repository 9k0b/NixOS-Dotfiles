#! /usr/bin/env nix-shell
#! nix-shell -i bash playerctl

album_art=$(playerctl -p spotify metadata mpris:artUrl)
if [[ -z $album_art ]]
then
   exit
fi
curl -s  "${album_art}" --output "/tmp/cover.jpeg"
echo "/tmp/cover.jpeg"
