#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash

set -e

commit_message=""

git add -A
read -p "Enter Commit Message: " commit_message
git commit -m "$commit_message"
