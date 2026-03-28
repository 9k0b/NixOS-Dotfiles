{ pkgs, ... }:

{

  imports = [
    ./onefetch.nix
    ./fastfetch.nix
  ];
}
