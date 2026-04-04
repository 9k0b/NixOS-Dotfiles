#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash curl
text=""
location="Berlin"

for i in {1..5}; do
    text=$(curl -s "https://wttr.in/${location}?format=1")
    tooltip=$(curl -s "https://wttr.in/${location}?format=2")
    echo "{\"text\":\"$text\",\"tooltip\":\"$tooltip\"}"
    sleep 2
done
