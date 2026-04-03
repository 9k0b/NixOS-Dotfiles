#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash alejandra

set -eu pipefail

push_or_local=""

read -p "Do you want to push the changes to a remote Git Repo or store them Localy (1/2): " push_or_local
if [[ "$push_or_local" == "1" ]]; then
    ../git/add_commit.sh
else
    echo "else placeholder"
fi
