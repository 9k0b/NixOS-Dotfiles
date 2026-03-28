{ pkgs, ... }:

{

  imports = [
    ./terminal/default.nix
    ./shell/default.nix
  ];
}
