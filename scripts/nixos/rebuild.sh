#! /usr/bin/env nix-shell
#! nix-shell -i bash -p bash alejandra

set -e

repo_root=$(git rev-parse --show-toplevel)
rebuild_machine=""

cd $repo_root
alejandra . &>/dev/null

read -p "Enter the machine name for rebuilding: " rebuild_machine
nix flake update
sudo nixos-rebuild switch --flake $repo_root#$rebuild_machine

sudo nix-env --delete-generations +3
sudo nix-collect-garbage
