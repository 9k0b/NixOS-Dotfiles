#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash

set -eu pipefail

commit_message=""
git_repo_create_y_or_no=""

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    git add -A
    read -p "Enter Commit Message: " commit_message
    git commit -m "$commit_message"
else
  read -p "Not in a Git Repo initialize (y/n)"
  if [[ "$git_repo_create_y_or_no" == "y" || "$git_repo_create_y_or_no" == "Y" ]]; then
    git init
    echo "Initialized Git Repo"
  else
    echo "Canceled"
  fi
fi
