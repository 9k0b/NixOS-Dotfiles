{ pkgs, ... }:

{
  imports = [
    ./terminal/default.nix
    ./shell/default.nix
    ./cli/default.nix
    ./tmux/default.nix
  ];
}
