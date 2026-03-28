{ pkgs, ... }:

{

  imports = [
    ./drivers/default.nix
    ./misc/default.nix
  ];
}
