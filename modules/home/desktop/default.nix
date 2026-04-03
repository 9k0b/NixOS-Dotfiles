{ pkgs, ... }:

{

  imports = [
    ./fonts.nix
    ./filemanager/default.nix
    ./clipboard.nix
    ./wallpaper.nix
    ./lock/default.nix
    ./wofi/default.nix
    ./sunset/default.nix
  ];
}
