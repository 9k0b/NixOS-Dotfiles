{pkgs, ...}: {
  imports = [
    ./fonts/default.nix
    ./filemanager/default.nix
    ./clipboard/default.nix
    ./wallpaper/default.nix
    ./lock/default.nix
    ./rofi/default.nix
    ./sunset/default.nix
    ./waybar/default.nix
  ];
}
