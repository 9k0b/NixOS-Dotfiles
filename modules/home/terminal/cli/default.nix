{ pkgs, ... }:

{

  imports = [
    ./fetch/default.nix
    ./btop.nix
    ./eza.nix
  ];
}
