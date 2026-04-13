{pkgs, ...}: {
  imports = [
    ./network/default.nix
    ./network/default.nix
    ./drivers/default.nix
    ./misc/default.nix
    ./virtualisation/default.nix
    ./ai/default.nix
  ];
}
