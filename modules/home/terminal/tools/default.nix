{ pkgs, ... }:

{

  imports = [
    ./git/default.nix
    ./atuin.nix
    ./utils.nix
  ];
}
