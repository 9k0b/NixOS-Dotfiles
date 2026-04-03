#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash alejandra

set -eu pipefail

push_or_local=""
git_repo_root=git rev-parse --show-toplevel
# tracking every change with git
read -p "Do you want to push the changes to a remote Git Repo or store them Localy (1/2): " push_or_local
if [[ "$push_or_local" == "1" ]]; then
    ../git/add_commit.sh
elif [[ "$push_or_local" == "2" ]]; then
    ../git/add_commit_push.sh
fi

# formating
echo "Formatting now ..."
cd $git_repo_root
alejandra .

# updating flakes
nix flake update

# rebuilding
sudo nixos-rebuild switch --flake
