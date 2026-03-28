{ pkgs, ... }:

{

  imports = [
    ./spotify.nix
    ./keepassxc.nix
  ];
}
