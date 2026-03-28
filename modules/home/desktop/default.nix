{ pkgs, ... }:

{

  imports = [
    ./fonts.nix
    ./filemanager/default.nix
    ./clipboard.nix
  ];
}
