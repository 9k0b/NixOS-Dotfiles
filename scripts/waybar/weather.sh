#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash curl
text=""
location="Berlin"

for i in {1..5}; do
    text=$(curl -s "https://wttr.in/${location}?format=%t&lang=en")
    tooltip=$(curl -s "https://wttr.in/${location}?format=%l:+%t&lang=en")

    echo "{\"text\":\"$text\",\"tooltip\":\"$tooltip\"}"
    sleep 2
done
